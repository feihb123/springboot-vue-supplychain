package cn.datacharm.springbootvuecli.service;

import cn.datacharm.springbootvuecli.pojo.AliPayInfo;
import cn.datacharm.springbootvuecli.pojo.OrderResponse;
import cn.datacharm.springbootvuecli.pojo.ShopRequest;

import java.util.List;

/**
 * @author Herb Fei
 * @description 订单处理
 * @date 2019-06-26
 */
public interface OrderService {
    /**
     * 处理前端请求，把购物车信息地址等提取并生成对应商家订单和交易订单
     * @param request 前端发送json转换后的内容
     * @return 生成的交易订单信息
     */
    AliPayInfo handle(ShopRequest request);

    /**
     * 通过out_trade_no查交易订单信息
     * @param out_trade_no 交易号
     * @return 具体的交易订单信息
     */
    AliPayInfo findInfoByTradeNo(String out_trade_no);

    /**
     * 根据交易号改变此交易号下一个或多个商家订单状态
     * @param out_trade_no  交易号
     * @param status 状态编号
     * @return 是否成功
     */
    boolean changeOrderStatus(String out_trade_no,Integer status);

    /**
     * 通过顾客id和订单状态查询订单
     * @param consumerId 顾客id
     * @param status 订单状态
     * @return 订单响应列表
     */
    List<OrderResponse> getOrdersByConsumerIdAndStatus(Integer consumerId, Integer status);
}
