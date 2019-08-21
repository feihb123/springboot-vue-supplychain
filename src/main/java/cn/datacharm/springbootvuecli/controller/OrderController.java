package cn.datacharm.springbootvuecli.controller;

import cn.datacharm.springbootvuecli.pojo.OrderResponse;
import cn.datacharm.springbootvuecli.pojo.User;
import cn.datacharm.springbootvuecli.service.OrderService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Herb Fei
 * @description 订单生成控制器
 * @date 2019-06-26
 */
@RestController
@RequestMapping("/order")
public class OrderController {
    @Autowired
    OrderService orderService;

    private Integer getConsumerId(){
        User principal = (User) SecurityUtils.getSubject().getPrincipal();
        return principal.getId();
    }

    @GetMapping("/")
    public List<OrderResponse> orders(){
        List<OrderResponse> orders = orderService.getOrdersByConsumerIdAndStatus(getConsumerId(), null);
        return orders;
    }

    @GetMapping("/waitDeliver")
    public List<OrderResponse> waitDeliver(){

        int status = 1;
        List<OrderResponse> orders = orderService.getOrdersByConsumerIdAndStatus(getConsumerId(), status);
        return orders;
    }

    @GetMapping("/waitPay")
    public List<OrderResponse> waitPay(){

        int status = 0;
        List<OrderResponse> orders = orderService.getOrdersByConsumerIdAndStatus(getConsumerId(), status);
        return orders;
    }

    @GetMapping("/waitConfirm")
    public List<OrderResponse> waitConfirm(){

        int status = 2;
        List<OrderResponse> orders = orderService.getOrdersByConsumerIdAndStatus(getConsumerId(), status);
        return orders;
    }

    @GetMapping("/waitEvaluate")
    public List<OrderResponse> waitEvaluate(){

        int status = 3;
        List<OrderResponse> orders = orderService.getOrdersByConsumerIdAndStatus(getConsumerId(), status);
        return orders;
    }
}
