package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * description:
 * 地址
 * @author Herb
 * @date 2019/08/19
 */
@Getter
@Setter
@ToString
public class Address implements Serializable {
    private static final long serialVersionUID = 6144143615623165933L;
    private Integer aid;
    private String name;
    private String address;
    private String tel;
    private Integer defaultAdd;
}
