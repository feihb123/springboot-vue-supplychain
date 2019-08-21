package cn.datacharm.springbootvuecli.controller;

import cn.datacharm.springbootvuecli.pojo.Address;
import cn.datacharm.springbootvuecli.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;
import java.util.List;

/**
 * description:
 * 地址相关内容控制器
 * @author Herb
 * @date 2019/08/19
 */
@RestController
public class AddressController {
    private AddressService addressService;

    @Autowired
    public void setAddressService(AddressService addressService) {
        this.addressService = addressService;
    }

    @PostMapping("/address")
    public Integer saveAddr(@RequestBody  Address address){
        return addressService.saveAddress(address);
    }

    @GetMapping("/address")
    public List<Address> findAddress() {
        return addressService.findAddress();
    }

    @DeleteMapping("/address/{aid}")
    public Boolean deleteAddress(@PathVariable String aid) {
        System.out.println(aid);
        return addressService.deleteAddress(Integer.parseInt(aid));
    }

    @GetMapping("/defaultAddress")
    public Address findDefaultAddress(){
        return addressService.findDefaultAddress();
    }

    @PostMapping("/defaultAddress")
    public Boolean setDefaultAddress(@RequestBody Address address) {
        return addressService.setDefaultAddress(address.getAid());
    }


}
