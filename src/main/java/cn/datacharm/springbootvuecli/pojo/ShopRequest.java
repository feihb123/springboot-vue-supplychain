package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author Herb Fei
 * @description 提交订单中包含的信息
 * @date 2019-06-26
 */
@Getter
@Setter
@ToString
public class ShopRequest implements Serializable {
    private Shop[] shops;
    private String address;
    private String addressee;
    private String tel;
    private Double total;
}
