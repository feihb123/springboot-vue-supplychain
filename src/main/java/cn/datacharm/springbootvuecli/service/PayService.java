package cn.datacharm.springbootvuecli.service;

import cn.datacharm.springbootvuecli.pojo.AliPayInfo;

/**
 * @author Herb Fei
 * @description 支付接口
 * @date 2019-06-26
 */
public interface PayService {
    /**
     * 阿里支付接口配置
     * @param info 交易订单信息
     * @return 调用SDK生成的表单->用以渲染成支付页面
     */
    String check(AliPayInfo info);
}
