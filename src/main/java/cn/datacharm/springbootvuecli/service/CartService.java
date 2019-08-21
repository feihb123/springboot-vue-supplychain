package cn.datacharm.springbootvuecli.service;

import cn.datacharm.springbootvuecli.pojo.Goods;

/**
 * @author Herb Fei
 * @description
 * @date 2019-07-01
 */
public interface CartService {
    String addCart(Goods goods);
    Integer updateCart(int sid,Integer amount);
    Integer delCart(int sid);

}
