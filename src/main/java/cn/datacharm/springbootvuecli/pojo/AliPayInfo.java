package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author Herb Fei
 * @description 阿里支付接口需要的参数
 * @date 2019-06-26
 */
@Setter
@Getter
@ToString
public class AliPayInfo implements Serializable {

    private static final long serialVersionUID = 3276013490371904366L;
    private String out_trade_no;
    private String orderId;
    private Double total_amount;
    private String subject;
    private String body;
    private String passback_params;
    private String product_code = "FAST_INSTANT_TRADE_PAY";

}
