package com.bullx.bullx.eureka;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

/**
 * 编  号：
 * 名  称：BullxEurekaApplication
 * 描  述：注册中心应用服务
 * 完成日期：2020/7/19 14:04
 * @author：Administrator
 */
@EnableEurekaServer
@SpringBootApplication
public class BullxEurekaApplication {

    /**
     *  http://bullx-eureka:18080/bullx-eureka
     *    账号密码见配置文件实际配置，默认为:bullx/bullx
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(BullxEurekaApplication.class, args);
    }

}
