package cn.datacharm.springbootvuecli.controller;

import cn.datacharm.springbootvuecli.dao.CarMapper;
import cn.datacharm.springbootvuecli.pojo.Brand;
import cn.datacharm.springbootvuecli.pojo.Config;
import cn.datacharm.springbootvuecli.pojo.Series;
import cn.datacharm.springbootvuecli.pojo.Year;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;
import java.util.List;

/**
 * @author datacharm.cn
 */
@RestController
@RequestMapping("/car")
public class CarController {
    @Autowired
    CarMapper carMapper;

    @GetMapping("/brand")
    public List<Brand> showBrands(){
        return carMapper.findBrands();
    }

    @GetMapping("/spell")
    public List<Brand> spell(@PathParam("value") String value){
        return carMapper.findBrandsByName(value);
    }

    @GetMapping("/series/{bid}")
    public List<Series> showSeries(@PathVariable("bid") int bid){
        return carMapper.findSeries(bid);
    }

    @GetMapping("/year/{sid}")
    public List<Year> showYears(@PathVariable("sid") int sid){
        return carMapper.findYears(sid);
    }

    @GetMapping("/config/{yid}")
    public List<Config> showConfigs(@PathVariable("yid") int yid){
        return carMapper.findConfigs(yid);
    }
}
