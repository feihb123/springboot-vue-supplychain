package cn.datacharm.springbootvuecli.shiro;

import cn.datacharm.springbootvuecli.dao.UserMapper;
import cn.datacharm.springbootvuecli.pojo.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;


/**
 * @author Herb Fei
 * @description 自定义Realm
 * @date 2019-06-30
 */
public class UserRealm extends AuthorizingRealm {
    @Autowired
    UserMapper userMapper;

    /**
     * 授权逻辑
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("执行认证逻辑");
        return null;
    }

    /**
     * 认证逻辑
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        if (null == userMapper.isExist(token.getUsername())) {
            //UnknowAccountException
            return null;
        }

        User user = new User();
        user.setEmail(token.getUsername());
        User principal = userMapper.findPortTrait(user.getEmail());

        return new SimpleAuthenticationInfo(principal, userMapper.getPWD(user), getName());
    }
}
