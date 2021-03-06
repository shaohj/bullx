package com.bullx.bullx.gateway;

import com.bullx.bullx.common.gateway.annotation.EnableBullxDynamicRoute;
import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;

/**
 * 编  号：
 * 名  称：BullxGatewayApplication
 * 描  述：网关应用服务
 * 完成日期：2020/7/20 0:20
 * @author：felix.shao
 */
@EnableBullxDynamicRoute
@SpringCloudApplication
public class BullxGatewayApplication {

    public static void main(String[] args) {
        SpringApplication.run(BullxGatewayApplication.class, args);
    }

}
