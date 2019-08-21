package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author Herb Fei
 * @description 购物车某个商品信息(也用作汽配商库存某个商品信息)
 * @date 2019-06-25
 */
@Setter
@Getter
@ToString
public class Goods implements Serializable {
    private static final long serialVersionUID = 3646586295502031986L;
    private Integer sid;
    private Integer consumerId;
    private Integer salerId;
    private String productId;
    private Integer amount;
    private String type;
    private String productName;
    private Double price;
    private String photo;
    private boolean check_one = false;
}
