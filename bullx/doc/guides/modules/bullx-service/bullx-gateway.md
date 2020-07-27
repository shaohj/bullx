# 1 bullx-gateway
组件主要功能如下
- bullx-gateway 网关
  - 路由.动态路由
  - 断路器.
  - 限流.
  - 路径重写.

# 2 notes

## 2.1 路由

### 2.1.1 自定义路由配置
略.默认的applicaion.yml配置即可

### 2.1.2 动态路由

### 2.1.2.1 动态路由环境搭建
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
PS:这个路径实际使用时发现其忽略了server.servlet.context-path配置，有没有它都是访问如上路径

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

### 2.1.2.2 动态路由设计实现
redis存储动态路由信息

# 3 参考文献
- 网关
  - 路由
    - [(pig)Spring Cloud Gateway 数据库存储路由信息的扩展方案](https://juejin.im/post/5be580c251882516c15af3d7)
    - [spring cloud 2.x版本 Gateway路由网关教程](https://juejin.im/post/5da191fd51882555704c887b)
    - [spring cloud 2.x版本 Gateway动态路由教程](https://juejin.im/post/5dbee3dde51d456e652839ea)
    - [SpringCloud实战十三：Gateway之 Spring Cloud Gateway 动态路由](https://blog.csdn.net/zhuyu19911016520/article/details/86557165)
    - [spring cloud 2.x版本 Gateway动态路由教程](https://juejin.im/post/5dbee3dde51d456e652839ea)
  - [聊聊spring cloud gateway的PrefixPath及StripPrefix功能](https://my.oschina.net/go4it/blog/1829211)
  
# 4 拓展
- 拓展问题
  - 动态路由为什么redis的优先比PropertiesRouteDefinitionLocator加载?