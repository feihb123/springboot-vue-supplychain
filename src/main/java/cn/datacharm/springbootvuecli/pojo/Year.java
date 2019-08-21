package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;

/**
 * @author datacharm.cn
 */
@Setter
@Getter
@ToString
public class Year implements Serializable {
    private Integer id;
    private String name;
    private Integer sid;
}
