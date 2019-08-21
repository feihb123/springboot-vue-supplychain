package cn.datacharm.springbootvuecli.dao;

import cn.datacharm.springbootvuecli.pojo.User;
import jdk.nashorn.internal.objects.annotations.Setter;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

/**
 * @author Herb Fei
 * @description 用户认证
 * @date 2019-06-30
 */
@Mapper
@Repository
public interface UserMapper {
    /**
     * 查询用户是否存在
     * @param email
     * @return
     */
    @Select("select * from consumer where email=#{email}")
    User isExist(String email);

    /**
     * 查询用户密码
     * @param user
     * @return
     */
    @Select("select password from consumer where email=#{email}")
    String getPWD(User user);

    /**
     * 增加用户
     * @param user 用户信息
     * @return 是否增加成功
     */
    @Insert("insert into consumer(email,password) values(#{email},#{password})")
    Boolean saveUser(User user);
    /**
     * 查询用户信息
     * @param email
     * @return
     */
    @Select("select id,nickname,photo,phone,email from consumer where email = #{email}")
    User findPortTrait(String email);

    /**
     * 更新用户头像
     * @param id
     * @param photo
     * @return
     */
    @Update("update consumer set photo = #{photo} where id = #{id}")
    Integer updatePorTrait(Integer id,String photo);

    /**
     * 根据用户id查询信息
     * @param id
     * @return
     */
    @Select("select nickname,phone,email from consumer where id = #{id}")
    User findUserInfo(Integer id);

    /**
     * 修改用户信息
     * @param user
     * @return
     */
    @Update("update consumer set nickname = #{nickname}" +
            ",phone = #{phone} where id = #{id}")
    Integer updateUserInfo(User user);


}
