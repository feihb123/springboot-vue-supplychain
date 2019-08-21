package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

/**
 * @author Herb Fei
 * @description 购物车商品
 * @date 2019-06-25
 */
@Setter
@Getter
public class Shop implements Serializable {
    private static final long serialVersionUID = -3154855595159618597L;
    private Integer id;
    private String shopname;
    private boolean this_all = false;
    private List<Goods> goods;
}
