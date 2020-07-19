package com.bullx.bullx.config;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

/**
 * 编  号：
 * 名  称：BullxConfigApplication
 * 描  述：配置中心应用服务
 * 完成日期：2020/7/19 23:30
 * @author：Administrator
 */
@EnableConfigServer
@SpringCloudApplication
public class BullxConfigApplication {

    /**
     *
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(BullxConfigApplication.class, args);
    }

}
