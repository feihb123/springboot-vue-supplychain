package cn.datacharm.springbootvuecli.service;

import cn.datacharm.springbootvuecli.pojo.ShopContent;

import java.util.List;

/**
 * @author Herb Fei
 * @description
 * @date 2019-07-01
 */
public interface ShopService {
    /**
     * 获取商品内容
     * @return
     */
    ShopContent getContent(Integer id);

}
