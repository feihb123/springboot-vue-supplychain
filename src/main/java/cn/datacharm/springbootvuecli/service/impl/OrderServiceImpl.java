package cn.datacharm.springbootvuecli.service.impl;

import cn.datacharm.springbootvuecli.dao.OrderMapper;
import cn.datacharm.springbootvuecli.pojo.*;
import cn.datacharm.springbootvuecli.service.OrderService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author Herb Fei
 * @description 订单相关服务
 * @date 2019-06-26
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    OrderMapper orderMapper;

    private Integer getConsumerId(){
        User principal = (User) SecurityUtils.getSubject().getPrincipal();
        return principal.getId();
    }


    @Override
    @Transactional(propagation= Propagation.REQUIRED,rollbackForClassName = "Exception")
    public AliPayInfo handle(ShopRequest shopRequest) {
        //session.getAttribute("id");
        String consumerId = String.valueOf(getConsumerId());
        //支付相关参数
        String subject = "";
        String body = "";
        String dateTime = new SimpleDateFormat("yyyyMMddHHmm").format(new Date());
        String tradeNo = dateTime+System.currentTimeMillis();
        Double total_amount = shopRequest.getTotal();
        //交易信息表(trade)中保存的 每笔订单id组合
        String orderId = "";

        for (Shop shop : shopRequest.getShops()) {
            String pros = "";
            String amounts = "";
            subject += shop.getShopname() + ";";
            List<Goods> goods = shop.getGoods();
            for (Goods good : goods) {
                pros += good.getProductId() + ";";
                amounts +=  good.getAmount() + ";";
                body += good.getProductName() + ";";
            }
            CSOrder order = new CSOrder();
            order.setAddress(shopRequest.getAddress());
            order.setAddressee(shopRequest.getAddressee());
            order.setTel(shopRequest.getTel());
            order.setTotal(shopRequest.getTotal());
            Long oid = Long.parseLong(System.currentTimeMillis() + consumerId);
            orderId += oid + ";";
            order.setOrderId(oid);
            order.setTime(new Timestamp(System.currentTimeMillis()));
            order.setSalerId(shop.getId());
            order.setProductId(pros);
            order.setAmount(amounts);
            order.setStatus(0);
            order.setConsumerId(1);
            orderMapper.addOrder(order);

        }

        //交易订单插入数据库
        AliPayInfo info = new AliPayInfo();
        info.setOut_trade_no(tradeNo);
        info.setSubject(subject);
        info.setBody(body);
        info.setOrderId(orderId);
        info.setPassback_params(tradeNo);
        info.setTotal_amount(total_amount);
        info.setPassback_params(tradeNo);
        //System.out.println(info.toString());
        orderMapper.addTrade(info);

        return info;
    }

    @Override
    public AliPayInfo findInfoByTradeNo(String out_trade_no) {
        return orderMapper.findInfoByTradeNo(out_trade_no);
    }

    @Override
    @Transactional(propagation= Propagation.REQUIRED,rollbackForClassName = "Exception")
    public boolean changeOrderStatus(String out_trade_no, Integer status) {
        String orderIds = orderMapper.findOrderIdByTradeNo(out_trade_no);
        String[] orderId = orderIds.split(";");
        for (String s : orderId) {
            orderMapper.changeOrderStatus(s,status);
        }
        orderMapper.changeTradeStatus(out_trade_no,1);
        return true;
    }

    @Override
    public List<OrderResponse> getOrdersByConsumerIdAndStatus(Integer consumerId, Integer status) {
        List<OrderResponse> responses = new ArrayList<>();
        List<CSOrder> orders = orderMapper.getOrdersByConsumerIdAndStatus(consumerId, status);
        for (CSOrder order : orders) {
            OrderResponse response = new OrderResponse();

            response.setSalerId(order.getSalerId());
            response.setPhoto(order.getPhoto());
            response.setShopname(order.getShopname());
            response.setTotal(order.getTotal());
            response.setOrderId(order.getOrderId());
            response.setTime(order.getTime());
            //productId/amount 在cs_order中为字符串 格式 xxx;xxx; 表示一个订单中多个商品
            String productIds[] = order.getProductId().split(";");
            int len = productIds.length;
            Goods[] goods = new Goods[len];
            for (int i = 0; i < len; i++) {
                goods[i] = orderMapper.findGoodsBySalerIdAndProductId(order.getSalerId(),productIds[i]);
            }
            String amounts[] = order.getAmount().split(";");
            for (int i = 0; i < len; i++) {
                //Goods中原来有amount ->  那个是店铺库存剩余 此处是订单中某种商品个数
                goods[i].setAmount(Integer.parseInt(amounts[i]));
            }
            response.setGoods(goods);

            //加入列表中
            responses.add(response);
        }
        return responses;
    }
}
