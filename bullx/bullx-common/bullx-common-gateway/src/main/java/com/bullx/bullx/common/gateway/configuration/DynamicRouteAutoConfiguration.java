package com.bullx.bullx.common.gateway.configuration;

import org.springframework.cloud.gateway.config.GatewayProperties;
import org.springframework.cloud.gateway.config.PropertiesRouteDefinitionLocator;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * 编  号：
 * 名  称：DynamicRouteAutoConfiguration
 * 描  述：动态路由配置类
 * 完成日期：2020/7/27 23:19
 * @author：felix.shao
 */
@Configuration
@ComponentScan("com.bullx.bullx.common.gateway")
public class DynamicRouteAutoConfiguration {

	/**
	 * 配置文件设置为空
	 * redis 加载为准
	 *
	 * @return
	 */
	@Bean
	public PropertiesRouteDefinitionLocator propertiesRouteDefinitionLocator() {
		return new PropertiesRouteDefinitionLocator(new GatewayProperties());
	}

}
