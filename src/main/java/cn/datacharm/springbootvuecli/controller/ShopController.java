package cn.datacharm.springbootvuecli.controller;

import cn.datacharm.springbootvuecli.dao.ShopContentMapper;
import cn.datacharm.springbootvuecli.dao.ShopRepository;
import cn.datacharm.springbootvuecli.entity.SalerShop;
import cn.datacharm.springbootvuecli.pojo.ShopContent;
import cn.datacharm.springbootvuecli.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @author datacharm.cn
 */
@RestController
@RequestMapping("/shop")
public class ShopController {
    @Autowired
    private ShopRepository shopRepository;
    @Autowired
    ShopService shopService;

    @RequestMapping(method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
    public List<SalerShop> getShop(){
        List<SalerShop> page = shopRepository.findAll();
        return page;
    }

    @GetMapping("/content/{id}")
    public ShopContent getContent(@PathVariable Integer id){
        return shopService.getContent(id);
    }
}
