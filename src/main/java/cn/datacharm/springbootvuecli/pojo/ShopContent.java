package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author Herb Fei
 * @description 进入店铺属性
 * @date 2019-07-01
 */
@Setter
@Getter
@ToString
public class ShopContent implements Serializable {
    private static final long serialVersionUID = 2035979453637224508L;
    private Integer id;
    private String shopname;
    private String photo;
    private String description;
    private String location;
    private String telephone;
    private String welcome;
    private Goods[] goods;
}
