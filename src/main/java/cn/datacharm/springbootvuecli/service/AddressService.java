package cn.datacharm.springbootvuecli.service;

import cn.datacharm.springbootvuecli.pojo.Address;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * description:
 * 地址相关服务
 * @author Herb
 * @date 2019/08/19
 */

public interface AddressService {
    /**
     * 保存用户地址信息
     *
     * @param address 地址
     * @return 成功1 失败0
     */
    Integer saveAddress(Address address);

    /**
     * 查询用户地址列表
     * @return 地址列表
     */
    List<Address> findAddress();

    /**
     * 查询默认地址
     * @return 单个地址
     */
    Address findDefaultAddress();

    /**
     * 设置默认地址
     * @param aid 地址id
     * @return 是否成功
     */
    Boolean setDefaultAddress(Integer aid);

    /***
     * 删除单个地址
     * @param aid 地址id
     * @return 是否删除
     */
    Boolean deleteAddress(Integer aid);
}
