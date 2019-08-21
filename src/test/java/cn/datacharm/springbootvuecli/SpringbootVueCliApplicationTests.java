package cn.datacharm.springbootvuecli;


import cn.datacharm.springbootvuecli.dao.CarMapper;
import cn.datacharm.springbootvuecli.dao.CartMapper;
import cn.datacharm.springbootvuecli.dao.OrderMapper;
import cn.datacharm.springbootvuecli.dao.ShopContentMapper;
import cn.datacharm.springbootvuecli.pojo.*;
import cn.datacharm.springbootvuecli.service.OrderService;
import cn.datacharm.springbootvuecli.service.PayService;
import cn.datacharm.springbootvuecli.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootVueCliApplicationTests {
    @Autowired
    CarMapper carMapper;
    @Autowired
    CartMapper cartMapper;
    @Autowired
    PayService payService;
    @Autowired
    OrderMapper orderMapper;
    @Autowired
    OrderService orderService;
    @Autowired
    ShopContentMapper shopContentMapper;

    @Test
    public void contextLoads() {

    }

    /*//批量插入年款
    @Test
    public void insert(){
        for(int i = 8;i <= 58;i++){
            for(int j = 2015;j <= 2019;j++){
                carMapper.insert(i,String.valueOf(j));
            }
        }
    }
    
    //批量插入配置
    @Test
    public void insert2(){
        String[] configs = {
                "豪华配置","高配","低配","时尚款","运动款","裸款"
        };
        for(int i = 285;i <= 539;i++){
            for (String config : configs) {
                carMapper.insert2(i,config);
            }
        }
    }*/

    @Test
    public void showCart(){
        List<Shop> shops = cartMapper.findCartById(1,0,2);
        for (Shop shop : shops) {
            System.out.println(shop.getShopname());
            List<Goods> goods = shop.getGoods();
            for (Goods good : goods) {
                System.out.println("\t"+good.getProductName());
            }
        }

    }

    @Test
    public void orderTest(){
        List<CSOrder> orders = orderMapper.getOrdersByConsumerIdAndStatus(1, null);
        for (CSOrder order : orders) {
            System.out.println(order.getOrderId());
        }
    }

     @Test
    public void GoodsTest(){
         /*Goods goods = orderMapper.findGoodsBySalerIdAndProductId(1, "test001");
         System.out.println(goods.toString());*/
         List<OrderResponse> responses = orderService.getOrdersByConsumerIdAndStatus(1, 1);
         for (OrderResponse response : responses) {
             System.out.println(response);
         }
     }



    @Test
    public void shopContentTest(){
        ShopContent content = shopContentMapper.findContentById(1);

            System.out.println(content.getShopname());
            Goods[] goods = content.getGoods();
            for (Goods good : goods) {
                System.out.println(good.getProductName());

        }
    }


}
