package cn.datacharm.springbootvuecli.dao;

import cn.datacharm.springbootvuecli.pojo.Goods;
import cn.datacharm.springbootvuecli.pojo.Shop;
import cn.datacharm.springbootvuecli.pojo.ShopContent;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Herb Fei
 * @description 进入店铺中显示的内容
 * @date 2019-07-01
 */
@Mapper
@Repository
public interface ShopContentMapper {
    /**
     * 根据店铺id查询店铺信息和店铺中商品
     * @param id
     * @return
     */
    @Select("select id,shopname,photo,description,location,telephone,welcome \n" +
            "from saler\n" +
            "where id = #{id}")
    @Results(@Result(
            property = "goods",
            column = "id",
            many = @Many(select = "cn.datacharm.springbootvuecli.dao.ShopContentMapper.findGoodsBySalerId")
    ))
    ShopContent findContentById(Integer id);

    @Select("select salerId,productId,productName,\n" +
            "companyName,type,amount,price,photo \n" +
            "from saler_inventory\n" +
            "where salerId = #{id} " +
            "limit 10 ")
    List<Goods> findGoodsBySalerId(Integer id);
}
