# 1 bullx-gateway
网关,网关主要负责以下职责
* 路由
* 断路器
* 限流
* 路径重写

# 2 知识点梳理

## 2.1 路由

### 2.1.1 自定义路由配置

### 2.1.2 动态路由
使用步骤如下
```
# 添加相关pom依赖
在原来spring-gateway的基础上增加spring-boot-starter-actuator依赖
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-actuator</artifactId>
</dependency>
# 在application.yml中增加配置
management:
  endpoints:
    web:
      exposure:
        include: "*"
# 启动服务，访问http://localhost:18100/actuator/gateway/routes
PS:这个路径实际发行忽略了server.servlet.context-path配置，有没有它都是访问如上路径

# 新增路由，POST http://localhost:18100/actuator/gateway/routes/mytest
{
    "uri": "lb://BULLX-HELLO",
    "predicates": [
        {
            "args": {
                "pattern": "/myhello/**"
            },
            "name": "Path"
        }
    ],
    "filters": []
}

# 测试新增路由
get http://localhost:18100/myhello/hello/zhangsan
```

### 2.1.3 参考
[spring cloud 2.x版本 Gateway路由网关教程](https://juejin.im/post/5da191fd51882555704c887b)
[spring cloud 2.x版本 Gateway动态路由教程](https://juejin.im/post/5dbee3dde51d456e652839ea)
[SpringCloud实战十三：Gateway之 Spring Cloud Gateway 动态路由](https://blog.csdn.net/zhuyu19911016520/article/details/86557165)