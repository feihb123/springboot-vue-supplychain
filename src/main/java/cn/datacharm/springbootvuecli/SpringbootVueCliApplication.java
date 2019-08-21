package cn.datacharm.springbootvuecli;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class SpringbootVueCliApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootVueCliApplication.class, args);
    }

}
