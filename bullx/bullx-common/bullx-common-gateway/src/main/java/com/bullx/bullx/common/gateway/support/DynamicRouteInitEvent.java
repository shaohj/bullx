package com.bullx.bullx.common.gateway.support;

import org.springframework.context.ApplicationEvent;

/**
 * 编  号：
 * 名  称：DynamicRouteInitEvent
 * 描  述：路由初始化事件
 * 完成日期：2020/7/27 23:19
 * @author：felix.shao
 */
public class DynamicRouteInitEvent extends ApplicationEvent {

	public DynamicRouteInitEvent(Object source) {
		super(source);
	}

}
