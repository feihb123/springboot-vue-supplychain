package cn.datacharm.springbootvuecli.dao;

import cn.datacharm.springbootvuecli.pojo.Carousel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CarouselMapper {
    /**
     * 查询轮播图
     * @return
     */
    @Select("select photo,url from carousel where 1 = 1")
    List<Carousel> findAll();
}
