package cn.datacharm.springbootvuecli.service.impl;

import cn.datacharm.springbootvuecli.dao.CarouselMapper;
import cn.datacharm.springbootvuecli.pojo.Carousel;
import cn.datacharm.springbootvuecli.service.CarouselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Herb Fei
 * @description
 * @date 2019-07-01
 */
@Service
@CacheConfig(cacheNames = "carousel")
public class CarouselServiceImpl implements CarouselService {
    @Autowired
    CarouselMapper carouselMapper;

    @Override
    /*@Cacheable()*/
    public List<Carousel> getCarousels() {
        return carouselMapper.findAll();
    }
}
