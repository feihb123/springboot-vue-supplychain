package cn.datacharm.springbootvuecli.service.impl;

import cn.datacharm.springbootvuecli.dao.CartMapper;
import cn.datacharm.springbootvuecli.pojo.Goods;
import cn.datacharm.springbootvuecli.pojo.User;
import cn.datacharm.springbootvuecli.service.CartService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Herb Fei
 * @description
 * @date 2019-07-01
 */
@Service
public class CartServiceImpl implements CartService {
    @Autowired
    CartMapper cartMapper;

    private Integer getConsumerId(){
        User principal = (User) SecurityUtils.getSubject().getPrincipal();
        return principal.getId();
    }

    @Override
    public String addCart(Goods goods) {
        goods.setConsumerId(getConsumerId());
        System.out.println(goods.toString());
        Integer result = cartMapper.findCartBySalerIdAndProductId(goods);
        if(result == null){
            cartMapper.addCart(goods);
        }else{
            cartMapper.updateCart(result,1);
        }
        return "success";
    }

    @Override
    public Integer updateCart(int sid, Integer amount) {
        return cartMapper.updateCart2(sid,amount);
    }

    @Override
    public Integer delCart(int sid) {
        return cartMapper.delCart(sid);
    }
}
