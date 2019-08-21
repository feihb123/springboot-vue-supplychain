package cn.datacharm.springbootvuecli.service.impl;

import cn.datacharm.springbootvuecli.dao.ShopContentMapper;
import cn.datacharm.springbootvuecli.pojo.ShopContent;
import cn.datacharm.springbootvuecli.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Herb Fei
 * @description
 * @date 2019-07-01
 */
@Service
public class ShopServiceImpl implements ShopService {
    @Autowired
    ShopContentMapper shopContentMapper;
    @Override
    public ShopContent getContent(Integer id) {
        return shopContentMapper.findContentById(id);
    }
}
