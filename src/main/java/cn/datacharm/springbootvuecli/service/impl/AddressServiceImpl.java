package cn.datacharm.springbootvuecli.service.impl;

import cn.datacharm.springbootvuecli.dao.AddressMapper;
import cn.datacharm.springbootvuecli.pojo.Address;
import cn.datacharm.springbootvuecli.pojo.User;
import cn.datacharm.springbootvuecli.service.AddressService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * description:
 *
 * @author Herb
 * @date 2019/08/20
 */
@Service
public class AddressServiceImpl implements AddressService {
    private AddressMapper addressMapper;
    @Autowired
    public AddressServiceImpl(AddressMapper addressMapper) {
        this.addressMapper = addressMapper;
    }

    private Integer getConsumerId(){
        User principal = (User) SecurityUtils.getSubject().getPrincipal();
        return principal.getId();
    }

    @Override
    public Integer saveAddress(Address address) {
        if (addressMapper.isDefaultAddressNull(getConsumerId()) == 0) {
            return addressMapper.saveAddress(getConsumerId(), address.getAddress(), address.getTel(), address.getName(), 1);
        } else {
            return addressMapper.saveAddress(getConsumerId(),address.getAddress(),address.getTel(),address.getName(),0);
        }
    }

    @Override
    public List<Address> findAddress() {
        return addressMapper.findAddress(getConsumerId());
    }

    @Override
    public Address findDefaultAddress() {
        return addressMapper.findDefaultAddress(getConsumerId());
    }

    @Override
    public Boolean setDefaultAddress(Integer aid) {
        addressMapper.flushDefaultAddress(getConsumerId());
        return addressMapper.setDefaultAddress(getConsumerId(),aid);
    }

    @Override
    public Boolean deleteAddress(Integer aid) {
        return addressMapper.deleteAddress(aid);
    }
}
