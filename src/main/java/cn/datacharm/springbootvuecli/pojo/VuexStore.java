package cn.datacharm.springbootvuecli.pojo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.apache.shiro.authc.UsernamePasswordToken;

import java.io.Serializable;

/**
 * @author Herb Fei
 * @description 登录返回vuex中保存的信息
 * @date 2019-06-30
 */
@Setter
@Getter
@ToString
public class VuexStore implements Serializable {

    private static final long serialVersionUID = -8640429970620363597L;
    private String message;
    private UsernamePasswordToken token;
    private String username;
    private String headPortrait;
    private Integer id;

}
