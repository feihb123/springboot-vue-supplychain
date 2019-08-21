package cn.datacharm.springbootvuecli.service;

import cn.datacharm.springbootvuecli.pojo.Goods;
import cn.datacharm.springbootvuecli.pojo.SearchRequest;

import java.util.List;

/**
 * @author Herb Fei
 * @description
 * @date 2019-07-02
 */
public interface SearchService {

    List<Goods>  search(SearchRequest request);
}
