package cn.datacharm.springbootvuecli.service.impl;

import cn.datacharm.springbootvuecli.pojo.AliPayInfo;
import cn.datacharm.springbootvuecli.service.PayService;
import com.alibaba.fastjson.JSONObject;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradePayModel;


import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayTradePagePayResponse;

import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

import static com.alipay.api.AlipayConstants.*;

/**
 * @author Herb Fei
 * @description 支付业务
 * @date 2019-06-26
 */
@Service
public class PayServiceImpl implements PayService {

    /**
     * 支付宝接口参数设置
     */
    private final String APP_ID ="*";
    private final String APP_PRIVATE_KEY = "*";
    private final String ALIPAY_PUBLIC_KEY = "*";
    private final String url = "https://openapi.alipaydev.com/gateway.do";
    private final String returnUrl = "*";
    private final String notifyUrl = "*";

    @Override
    public String check(AliPayInfo info) {
        AlipayClient alipayClient = new DefaultAlipayClient(url, APP_ID, APP_PRIVATE_KEY, "json", "utf-8", ALIPAY_PUBLIC_KEY, "RSA2");
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(returnUrl);
        alipayRequest.setNotifyUrl(notifyUrl);

        //填入相关内容并转换成json格式
        Map maps = new HashMap<>(6);
        maps.put("out_trade_no",info.getOut_trade_no());
        maps.put("product_code","FAST_INSTANT_TRADE_PAY");
        maps.put("total_amount",info.getTotal_amount());
        maps.put("subject",info.getSubject());
        maps.put("body",info.getBody());
        maps.put("passback_params",info.getPassback_params());
        String content = JSONObject.toJSONString(maps);

        //demo->填充业务参数
        /*alipayRequest.setBizContent("{" +
                "    \"out_trade_no\":\"201906260010101113\"," +
                "    \"product_code\":\"FAST_INSTANT_TRADE_PAY\"," +
                "    \"total_amount\":1.88," +
                "    \"subject\":\"Iphone6 16G\"," +
                "    \"body\":\"Iphone6 16G\"," +
                "    \"passback_params\":\"merchantBizType%3d3C%26merchantBizNo%3d2016010101111\"," +
                "    \"extend_params\":{" +
                "    \"sys_service_provider_id\":\"2088511833207846\"" +
                "    }" +
                "  }");*/

        alipayRequest.setBizContent(content);
        String form = "";
        try {
            //调用SDK生成表单
            form = alipayClient.pageExecute(alipayRequest).getBody();
        } catch (AlipayApiException e) {
            e.printStackTrace();
        }

        return form;

    }
}
