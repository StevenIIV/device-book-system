package com.eer_system;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan({"com.eer_system.dao"})
public class EerSystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(EerSystemApplication.class, args);
    }

}
