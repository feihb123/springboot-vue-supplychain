package cn.datacharm.springbootvuecli.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String os = System.getProperty("os.name");
        //如果是Windows系统
        if (os.toLowerCase().startsWith("win")) {
            registry.addResourceHandler("/upload/**")
                    //项目外路径
                    .addResourceLocations("file:I:/img/");

        } else {  //linux 和mac
            registry.addResourceHandler("/upload/**")
                    .addResourceLocations("file:/webapps/img/");
        }
    }


}
