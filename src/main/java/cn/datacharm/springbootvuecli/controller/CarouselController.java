package cn.datacharm.springbootvuecli.controller;

import cn.datacharm.springbootvuecli.dao.CarouselMapper;
import cn.datacharm.springbootvuecli.pojo.Carousel;
import cn.datacharm.springbootvuecli.service.CarouselService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author datacharm.cn
 */
@RestController
@RequestMapping("/carousel")
public class CarouselController {
    @Autowired
    private CarouselService carouselService;

    @RequestMapping(method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Carousel> getPhotos(){

        return carouselService.getCarousels();

    }
}
