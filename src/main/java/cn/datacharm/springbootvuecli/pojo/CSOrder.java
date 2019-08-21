package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 * 顾客生成订单
 * @author Herb Fei
 */
@Setter
@Getter
@ToString
public class CSOrder implements Serializable {

    private static final long serialVersionUID = 4434574554063671319L;
    private long orderId;
    private int consumerId;
    private int salerId;
    private String shopname;
    private String photo;
    private Timestamp time;
    private String productId;
    private String amount;
    private double total;
    private String address;
    private String addressee;
    private int status;
    private String tel;

}
