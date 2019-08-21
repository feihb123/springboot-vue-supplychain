package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
@Setter
@Getter
@ToString
public class User implements Serializable {

    private static final long serialVersionUID = -5716736871098320854L;
    private Integer id;
    private String username;
    private String password;
    private Integer status;
    private String nickname;
    private String photo;
    private String phone;
    private String email;

}
