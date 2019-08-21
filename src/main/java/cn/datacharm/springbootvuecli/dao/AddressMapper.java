package cn.datacharm.springbootvuecli.dao;

import cn.datacharm.springbootvuecli.pojo.Address;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * description:
 *
 * @author Herb
 * @date 2019/08/20
 */
@Repository
@Mapper
public interface AddressMapper {
    /**
     * 保存用户地址信息
     * @param consumerId 用户ID
     * @param address 地址
     * @param tel 电话
     * @param name 姓名
     * @return 成功1 失败0
     */
    @Insert("insert into address(consumerId,address,tel,name,defaultAdd)" +
            " values(#{consumerId},#{address},#{tel},#{name},#{defaultAdd})")
    Integer saveAddress(Integer consumerId,String address,String tel,String name,Integer defaultAdd);

    /**
     * 查询单用户所有地址
     * @param consumerId 用户ID
     * @return 地址列表
     */
    @Select("select aid,name,tel,address from address where consumerId = #{consumerId}")
    List<Address> findAddress(Integer consumerId);

    /**
     * 查找用户默认地址
     * @param consumerId 用户ID
     * @return 单个地址
     */
    @Select("select aid,name,tel,address from address where consumerId = #{consumerId} and defaultAdd = 1")
    Address findDefaultAddress(Integer consumerId);

    /**
     * 查询用户是否存在默认地址
     * @param consumerId 用户id
     * @return 0不存在 1存在
     */
    @Select("select aid from address where consumerId = #{consumeId} and defaultAdd = 1")
    Integer isDefaultAddressNull(Integer consumerId);

    /**
     * 设置默认地址
     * @param consumerId 用户id
     * @param aid 地址id
     * @return 是否成功
     */
   @Update("update address set defaultAdd = 1 where consumerId = #{consumerId} and aid = #{aid} ")
    Boolean setDefaultAddress(Integer consumerId, Integer aid);

    /**
     * 清空默认地址，作为设置默认地址前提
     * @param consumerId 用户id
     * @return 是否成功
     */
    @Update("update address set defaultAdd = 0 where consumerId = #{consumeId}")
    Boolean flushDefaultAddress(Integer consumerId);

    /**
     * 删除地址
     * @param aid 地址id
     * @return 是否删除
     */
    @Delete("delete from address where aid = #{aid}")
    Boolean deleteAddress(Integer aid);
}
