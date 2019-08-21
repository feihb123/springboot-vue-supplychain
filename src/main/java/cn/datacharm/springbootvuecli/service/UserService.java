package cn.datacharm.springbootvuecli.service;

import cn.datacharm.springbootvuecli.pojo.User;
import cn.datacharm.springbootvuecli.pojo.VuexStore;
import org.apache.shiro.authc.UsernamePasswordToken;

/**
 * @author Herb Fei
 * @description 登录处理
 * @date 2019-06-30
 */
public interface UserService {
    /**
     * 用户首次登录，使用用户名和密码
     * @param user
     * @return
     */
    VuexStore handle(User user);

    /**
     * 用户注册
     * @param user 用户信息
     * @return 是否成功
     */
    Boolean register(User user);

    /**
     * 注销登录
     */
    void logOut();


    /**
     * 保存新上传头像路径
     * @param id
     * @param name
     * @return
     */
    Integer savePortrait(int id,String name);

    /**
     * 根据Id查询用户信息
     * @param id
     * @return
     */
    User findUserInfo(Integer id);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    Integer updateUserInfo(User user);
}
