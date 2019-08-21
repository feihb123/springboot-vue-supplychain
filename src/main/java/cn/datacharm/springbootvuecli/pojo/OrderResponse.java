package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @author Herb Fei
 * @description 查看订单、代发货订单等请求回应数据载体
 * @date 2019-06-27
 */
@Getter
@Setter
@ToString
public class OrderResponse implements Serializable {
    private static final long serialVersionUID = -6851004986200967596L;
    private int salerId;
    private String photo;
    private String shopname;
    private double total;
    private Long orderId;
    private Timestamp time;
    private Goods[] goods;
}
