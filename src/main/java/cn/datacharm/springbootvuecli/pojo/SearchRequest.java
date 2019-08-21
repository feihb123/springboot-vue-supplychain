package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @author Herb Fei
 * @description
 * @date 2019-07-02
 */
@Setter
@Getter
@ToString
public class SearchRequest {
    private Integer selected;
    private String input;
    private CarType carType;
    private Integer brand;
    private Integer series;
    private Integer year;
    private Integer config;
}
