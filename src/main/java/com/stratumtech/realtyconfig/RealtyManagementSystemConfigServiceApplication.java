package com.stratumtech.realtyconfig;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class RealtyManagementSystemConfigServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(RealtyManagementSystemConfigServiceApplication.class, args);
    }

}
