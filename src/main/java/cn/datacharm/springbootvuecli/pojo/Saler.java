package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

/**
 * @author Herb Fei
 * @description 汽配商
 * @date 2019-06-25
 */
@Setter
@Getter
public class Saler {
    private Integer id;
    private String shopname;
    private String photo;
    private String desc;
    private String location;
    private String phone;
    private Date regisrationtime;
    private String welcome;

}
