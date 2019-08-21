package cn.datacharm.springbootvuecli.dao;

import cn.datacharm.springbootvuecli.entity.SalerShop;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @author datacharm.cn
 */
public interface ShopRepository extends JpaRepository<SalerShop,Long> {

    @Override
    List<SalerShop> findAll();

}
