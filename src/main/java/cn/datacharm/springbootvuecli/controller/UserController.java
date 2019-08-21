package cn.datacharm.springbootvuecli.controller;

import cn.datacharm.springbootvuecli.dao.UserMapper;
import cn.datacharm.springbootvuecli.pojo.User;

import cn.datacharm.springbootvuecli.pojo.VuexStore;
import cn.datacharm.springbootvuecli.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Herb Fei
 * @description 登录处理
 * @date 2019-06-30
 */
@RestController
@RequestMapping("/public")
public class UserController {
    @Autowired
    UserService loginService;
    @Autowired
    UserMapper userMapper;
    @Autowired
    UserService userService;

    private Integer getConsumerId(){
        User principal = (User) SecurityUtils.getSubject().getPrincipal();
        return principal.getId();
    }

    @PostMapping("/login")
    public VuexStore login(@RequestBody  User user){
        VuexStore result = loginService.handle(user);
        return result;
    }

    @PostMapping("/register")
    public Map register(@RequestBody  User user){
        Map<String,Boolean> map = new HashMap<>();
        if (userService.register(user)) {
            map.put("success", true);
        }
        return map;
    }


    @PostMapping("/logOut")
    public void logOut(){
        loginService.logOut();
    }

    @PostMapping("/personalInfo")
    public User personalInfo(){
        Integer id = getConsumerId();
        User userInfo = userService.findUserInfo(id);
        return userInfo;
    }


    @PostMapping("/updatePersonalInfo")
    public Integer updatePersonalInfo(@RequestBody  User user){
        Integer id = getConsumerId();
        user.setId(id);
        try {
            System.out.println(user);
            userService.updateUserInfo(user);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }
}
