package cn.datacharm.springbootvuecli.service.impl;

import cn.datacharm.springbootvuecli.dao.UserMapper;
import cn.datacharm.springbootvuecli.pojo.User;
import cn.datacharm.springbootvuecli.pojo.VuexStore;
import cn.datacharm.springbootvuecli.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

/**
 * @author Herb Fei
 * @description 用户登录相关服务
 * @date 2019-06-30
 */
@Service
@CacheConfig(cacheNames="account")
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    /*@Cacheable(key ="#p0.getEmail()")*/
    public VuexStore handle(User user) {
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getEmail(),user.getPassword());
        VuexStore store = new VuexStore();
        store.setUsername(user.getEmail());
        store.setToken(token);
        User newUser = userMapper.findPortTrait(user.getEmail());
        store.setHeadPortrait(newUser.getPhoto());
        store.setId(newUser.getId());
        try {
            subject.login(token);
            System.out.println(token.getUsername()+" Login!");
            store.setMessage("success");
            return store;
        } catch (UnknownAccountException e) {
            store.setMessage("unknow account");
            return store;
        }catch (IncorrectCredentialsException e){
            store.setMessage("fail");
            return store;
        }
    }

    @Override
    public Boolean register(User user) {
        return userMapper.saveUser(user);
    }

    @Override
    public void logOut(){
        Subject currentUser = SecurityUtils.getSubject();
        User principal = (User)currentUser.getPrincipal();
        System.out.println(principal.getEmail() + " LogOut!");
        currentUser.logout();

    }


    @Override
    public Integer savePortrait(int id, String name) {
        return userMapper.updatePorTrait(id,name);
    }

    @Override
    public User findUserInfo(Integer id) {
        return userMapper.findUserInfo(id);
    }

    @Override
    public Integer updateUserInfo(User user) {
        return userMapper.updateUserInfo(user);
    }
}
