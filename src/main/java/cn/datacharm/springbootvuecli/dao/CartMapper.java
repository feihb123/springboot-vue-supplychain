package cn.datacharm.springbootvuecli.dao;

import cn.datacharm.springbootvuecli.pojo.Shop;
import cn.datacharm.springbootvuecli.pojo.Goods;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Herb Fei
 * @description 购物车Mapper
 * @date 2019-06-25
 */
@Mapper
@Repository
public interface CartMapper {
    /**
     * 按顾客id查询其购物车（商家->商品 一对多查询）
     * @param consumerId 顾客id
     * @return 购物车商品列表
     */
    @Select("select distinct saler.id,saler.shopname,#{consumerId} as consumerId from shoppingcart \n" +
            "join saler on saler.id = shoppingcart.salerId \n" +
            "where consumerId = #{consumerId} " +
            "order by addTime desc " +
            "limit #{start},#{end}")
    @Results(
            @Result(
                    property = "goods",
                    column = "{salerId = id,consumerId = consumerId}",
                    many = @Many(select = "cn.datacharm.springbootvuecli.dao.CartMapper.findGoodsBySalerId")
            )
    )
    List<Shop> findCartById(Integer consumerId,int start,int end);

    @Select("select \n" +
            "sid,consumerId,productName,price,photo,\n" +
            "shoppingcart.salerId,\n" +
            "shoppingcart.productId,\n" +
            "shoppingcart.amount\n" +
            "from shoppingcart\n" +
            "join saler_inventory on shoppingcart.salerId = saler_inventory.salerId\n" +
            "and shoppingcart.productId = saler_inventory.productId\n" +
            "where shoppingcart.salerId = #{salerId}\n"+
            "and consumerId = #{consumerId}" )
    List<Goods> findGoodsBySalerId(Integer salerId,Integer consumerId);

    /**
     * 查询此人购物车中是否有此商品
     * @param goods
     * @return
     */
    @Select("select sid from shoppingcart where " +
            "consumerId = #{consumerId} and salerId = #{salerId} and productId = #{productId}")
    Integer findCartBySalerIdAndProductId(Goods goods);

    /**
     * 新添加购物车
     * @return
     */
    @Insert("insert into shoppingcart (sid,consumerId,salerId,productId,amount,addTime) " +
            "values(null,#{consumerId},#{salerId},#{productId},1,now())")
    Integer addCart(Goods goods);

    /**
     * 更新购物车数量  累加
     * @return
     */
    @Update("update shoppingcart set amount = amount + #{amount} ,addTime = now()" +
            "where sid = #{sid}")
    Integer updateCart(int sid,Integer amount);

    /**
     * 更新购物车数量  直接改变值
     * @return
     */
    @Update("update shoppingcart set amount = #{amount} ,addTime = now()" +
            "where sid = #{sid}")
    Integer updateCart2(int sid,Integer amount);

    /**
     * 删除购物车中某一项
     * @return
     */
    @Update("delete from shoppingcart " +
            "where sid = #{sid}")
    Integer delCart(int sid);


}
