package cn.datacharm.springbootvuecli.dao;

import cn.datacharm.springbootvuecli.pojo.Goods;
import cn.datacharm.springbootvuecli.pojo.SearchRequest;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Herb Fei
 * @description
 * @date 2019-07-02
 */
@Mapper
@Repository
public interface SearchMapper {
    @Select("select * from saler_inventory where \n" +
            "brand = #{brand} and series = #{series} and year=#{year} and config = #{config}\n" +
            "and  productName like concat('%',#{input},'%')")
    List<Goods>  findSearchResult(SearchRequest request);
}
