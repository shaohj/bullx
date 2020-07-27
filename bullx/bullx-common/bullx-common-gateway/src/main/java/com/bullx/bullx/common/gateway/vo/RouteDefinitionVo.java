
package com.bullx.bullx.common.gateway.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.cloud.gateway.route.RouteDefinition;

import java.io.Serializable;

/**
 * 编  号：
 * 名  称：RouteDefinitionVo
 * 描  述：扩展此类支持序列化a
 * 完成日期：2020/7/27 23:20
 * @author：felix.shao
 * @see RouteDefinition
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class RouteDefinitionVo extends RouteDefinition implements Serializable {

	/**
	 * 路由名称
	 */
	private String routeName;

}
