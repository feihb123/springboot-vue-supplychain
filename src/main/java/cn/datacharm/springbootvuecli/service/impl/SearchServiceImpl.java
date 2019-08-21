package cn.datacharm.springbootvuecli.service.impl;

import cn.datacharm.springbootvuecli.dao.SearchMapper;
import cn.datacharm.springbootvuecli.pojo.CarType;
import cn.datacharm.springbootvuecli.pojo.Goods;
import cn.datacharm.springbootvuecli.pojo.SearchRequest;
import cn.datacharm.springbootvuecli.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Herb Fei
 * @description
 * @date 2019-07-02
 */
@Service
public class SearchServiceImpl implements SearchService {
    @Autowired
    SearchMapper searchMapper;

    @Override
    public List<Goods> search(SearchRequest request) {
        CarType carType = request.getCarType();
        request.setBrand(carType.getBrand());
        request.setSeries(carType.getSeries());
        request.setYear(carType.getYear());
        request.setConfig(carType.getConfig());
        return searchMapper.findSearchResult(request);
    }
}
