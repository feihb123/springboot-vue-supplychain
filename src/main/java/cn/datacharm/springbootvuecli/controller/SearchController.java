package cn.datacharm.springbootvuecli.controller;

import cn.datacharm.springbootvuecli.pojo.Goods;
import cn.datacharm.springbootvuecli.pojo.SearchRequest;
import cn.datacharm.springbootvuecli.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * @author Herb Fei
 * @description 搜索控制器
 * @date 2019-07-02
 */
@RestController
public class SearchController {
    @Autowired
    SearchService searchService;

    @PostMapping("/search")
    public List<Goods> search(@RequestBody SearchRequest request){

        List<Goods> goods = new ArrayList<>();
        goods.add(new Goods());
        goods.addAll(searchService.search(request));
        for (Goods good : goods) {
            System.out.println(good.toString());
        }

        return goods;
    }
}
