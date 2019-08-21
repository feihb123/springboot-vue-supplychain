package cn.datacharm.springbootvuecli.dao;

import cn.datacharm.springbootvuecli.pojo.AliPayInfo;
import cn.datacharm.springbootvuecli.pojo.CSOrder;
import cn.datacharm.springbootvuecli.pojo.Goods;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Herb Fei
 * @description 订单持久层
 * @date 2019-06-26
 */
@Mapper
@Repository
public interface OrderMapper {
    /**
     * 增加订单
     * @param order
     * @return
     */
    @Insert("insert into cs_order \n" +
            "(orderId, consumerId, salerId, time, productId," +
            " amount, total, address, addressee, status, tel)\n" +
            "values(#{orderId},#{consumerId},#{salerId},#{time}," +
            "#{productId},#{amount},#{total},#{address},#{addressee},#{status},#{tel})")
    boolean addOrder(CSOrder order);

    /**
     * 添加交易信息 -> 包含out_trade_no 和 多个订单id的组合
     */
    @Insert("insert into trade(out_trade_no,orderId,total_amount,subject,body,passback_params,status)\n" +
            "values(#{out_trade_no},#{orderId},#{total_amount},#{subject},#{body},#{passback_params},0)")
    boolean addTrade(AliPayInfo info);

    /**
     * 改变交易订单状态
     * @param out_trade_no 交易号
     * @return  是否成功
     */
    @Update("update trade set status = #{status} where out_trade_no = #{out_trade_no}")
    boolean changeTradeStatus(String out_trade_no,int status);

    /**
     * 按交易号查询交易订单
     * @param out_trade_no 交易号
     * @return 交易订单
     */
    @Select("select * from trade where out_trade_no = #{out_trade_no}")
    AliPayInfo findInfoByTradeNo(String out_trade_no);

    /**
     * 根据交易号查询此交易号下的商家订单
     * @param tradeNo 交易号 即out_trade_no
     * @return 订单号（ xxx;xxx;形式的字符串）
     */
    @Select("select orderId from trade where out_trade_no = #{tradeNo}")
    String findOrderIdByTradeNo(String tradeNo);

    /**
     * 根据商家订单号改变订单状态
     * @param orderId 商家订单号
     * @param status 状态号
     * @return 是否成功
     */
    @Update("update cs_order set status = #{status} where orderId = #{orderId}")
    boolean changeOrderStatus(String orderId,Integer status);


    /**
     * 通过顾客id和订单状态查询订单 -> 动态查询 status为空查询全部内容
     * @param consumerId 顾客id
     * @param status 订单状态
     * @return 对应订单列表
     */
    List<CSOrder> getOrdersByConsumerIdAndStatus(Integer consumerId,Integer status);

    /**
     * 按商家id和产品id查询单个商品信息 -> 用作OrderResponse的属性
     * @param salerId 商家id
     * @param productId 产品id
     * @return  单个Goods信息
     */
    @Select("select salerId,productId,productName,companyName,type,amount,price,photo " +
            "from saler_inventory where salerId = #{salerId} and productId = #{productId} ")
    Goods  findGoodsBySalerIdAndProductId(Integer salerId,String productId);
}
