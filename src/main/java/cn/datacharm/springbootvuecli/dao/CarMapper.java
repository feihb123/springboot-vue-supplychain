package cn.datacharm.springbootvuecli.dao;

import cn.datacharm.springbootvuecli.pojo.Brand;
import cn.datacharm.springbootvuecli.pojo.Config;
import cn.datacharm.springbootvuecli.pojo.Series;
import cn.datacharm.springbootvuecli.pojo.Year;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CarMapper {
    /**
     * 查询品牌
     * @return
     */
    @Select("select id,url,name from brand order by id asc limit 8")
    List<Brand> findBrands();
    /**
     * 按拼写模糊查询品牌
     * @return
     */
    @Select("select id,url,name from brand where spell like concat('%',#{name},'%') order by id asc limit 8")
    List<Brand> findBrandsByName(String name);
    /**
     * 按品牌查询系列
     * @return
     */
    @Select("select id,name from series where bid = #{bid} order by id desc limit 12")
    List<Series> findSeries(int bid);
    /**
     * 按系列查询年款
     * @return
     */
    @Select("select id,name from year where sid = #{sid} order by id desc limit 9")
    List<Year> findYears(int sid);
    /**
     * 按年款查询配置
     * @return
     */
    @Select("select id,name from config where yid = #{yid} order by id desc limit 9")
    List<Config> findConfigs(int yid);


    /**
     * 测试中批量插入年款
     * @param id
     * @param name
     */
    @Insert("insert into year values(null,#{name},#{id})")
    void insert(int id,String name);
    /**
     * 测试中批量插入配置
     * @param id
     * @param name
     */
    @Insert("insert into config values(null,#{name},#{id})")
    void insert2(int id,String name);
}
