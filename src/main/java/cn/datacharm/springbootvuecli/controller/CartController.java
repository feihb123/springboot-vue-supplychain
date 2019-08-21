package cn.datacharm.springbootvuecli.controller;

import cn.datacharm.springbootvuecli.dao.CartMapper;
import cn.datacharm.springbootvuecli.pojo.Goods;
import cn.datacharm.springbootvuecli.pojo.Shop;
import cn.datacharm.springbootvuecli.pojo.User;
import cn.datacharm.springbootvuecli.service.CartService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;
import java.util.List;
import java.util.Map;

/**
 * @author Herb Fei
 * @description 购物车相关页面控制器
 * @date 2019-06-25
 */

@RestController
public class CartController {
    @Autowired
    CartMapper cartMapper;
    @Autowired
    CartService cartService;

    private Integer getConsumerId(){
        User principal = (User) SecurityUtils.getSubject().getPrincipal();
        return principal.getId();
    }

    @RequestMapping("/cart/{start}/{end}")
    public List<Shop> findShops(@PathVariable int start, @PathVariable int end){

        return cartMapper.findCartById(getConsumerId(),start,end);
    }

    @PostMapping("/addCart")
    public Boolean addCart(@RequestBody Goods o){

        try {
            cartService.addCart(o);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @PutMapping("/cart")
    public boolean saveCart(@RequestBody Map map){
        Integer sid = (Integer) map.get("sid");
        Integer amount =(Integer)map.get("amount");
        try {
            cartService.updateCart(sid,amount);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return true;
    }

    @DeleteMapping("/cart")
    public boolean delCart(@RequestBody Map map){

        try {
            cartService.delCart((Integer) map.get("sid"));
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

        return true;
    }


}
