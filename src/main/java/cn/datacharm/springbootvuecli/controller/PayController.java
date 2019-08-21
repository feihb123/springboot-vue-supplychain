package cn.datacharm.springbootvuecli.controller;


import cn.datacharm.springbootvuecli.pojo.AliPayInfo;
import cn.datacharm.springbootvuecli.pojo.Goods;
import cn.datacharm.springbootvuecli.pojo.Shop;
import cn.datacharm.springbootvuecli.pojo.ShopRequest;
import cn.datacharm.springbootvuecli.service.CartService;
import cn.datacharm.springbootvuecli.service.OrderService;
import cn.datacharm.springbootvuecli.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @author Herb Fei
 * @description 支付控制器
 * @date 2019-06-26
 */
@RestController
public class PayController {
    @Autowired
    PayService payService;
    @Autowired
    OrderService orderService;
    @Autowired
    CartService cartService;

    /**
     * 支付前准备工作，获取需要支付的tradeNo
     */
    @PostMapping("/prepay")
    @ResponseBody
    public Map prepay(@RequestBody ShopRequest shopRequest){
        AliPayInfo info = orderService.handle(shopRequest);
        Map map = new HashMap(2);
        map.put("tradeNo",info.getOut_trade_no());
        //移除购物车物品
        Shop[] shopList = shopRequest.getShops();
        for (int i = 0; i < shopList.length; i++) {
            List<Goods> goodsList = shopList[i].getGoods();
            for (Goods goods : goodsList) {
                cartService.delCart(goods.getSid());
            }
        }
        return map;
    }

    @GetMapping("/pay/{tradeNo}")
    public void pay(@PathVariable String tradeNo, HttpServletResponse httpResponse, HttpServletRequest request, HttpSession session )throws IOException {
        System.out.println(tradeNo);
        AliPayInfo info = orderService.findInfoByTradeNo(tradeNo);

        String form = payService.check(info);
        httpResponse.setContentType("text/html;charset=" + "utf-8");
        //直接将完整的表单html输出到页面
        httpResponse.getWriter().write(form);
        httpResponse.getWriter().flush();
        httpResponse.getWriter().close();

    }

    /*@RequestMapping("/paySuccess")
    public String paySuccess(){
        orderService.changeOrderStatus("2019062700291561566540748",1);
        return "success";
    }*/

    @RequestMapping("/notify")
    public void notifyMsg(@RequestParam String passback_params){
        System.out.println("支付通知：");
        System.out.println(passback_params);
        orderService.changeOrderStatus(passback_params,1);

    }
}
