package com.bullx.bullx.common.gateway.annotation;

import com.bullx.bullx.common.gateway.configuration.DynamicRouteAutoConfiguration;
import org.springframework.context.annotation.Import;

import java.lang.annotation.*;

/**
 * 编  号：
 * 名  称：EnableBullxDynamicRoute
 * 描  述：开启动态路由
 * 完成日期：2020/7/27 23:18
 * @author：felix.shao
 */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
@Import(DynamicRouteAutoConfiguration.class)
public @interface EnableBullxDynamicRoute {
}
