# 1 dependencie
描述依赖的第三方组件或依赖的作用等

# 2 具体组件描述

## 2.1 导入springboot项目的两种方式对比
[spring-boot-starter-parent与spring-boot-dependencies](https://www.cnblogs.com/sjshare/p/10669001.html)

## 2.2 导入springcloud依赖
[spring-cloud-dependencies作用](https://blog.csdn.net/qq_41813208/article/details/105899091)

## 2.3 健康监控
使用说明如下：
```
# 添加依赖
<dependency> 
    <groupId>org.springframework.boot</groupId> 
    <artifactId>spring-boot-starter-actuator</artifactId> 
</dependency> 
如果使用HTTP调用的方式，还需要这个依赖：
<dependency> 
    <groupId>org.springframework.boot</groupId> 
    <artifactId>spring-boot-starter-web</artifactId> 
</dependency>
 
# 修改配置
配置yml文件参考如下
management:
  endpoints:
    web:
      exposure:
        include: '*'

# 访问监控
http://localhost:18080/actuator/env
http://localhost:18080/actuator/metrics
```

## 2.3.1 参考文献
[Spring Boot (十九)：使用 Spring Boot Actuator 监控应用](http://www.ityouknow.com/springboot/2018/02/06/spring-boot-actuator.html)
[spring-boot-starter-actuator](https://www.jianshu.com/p/d57dc9f2e0d9)
PS: 该组件是做动态路由必须的组件，详细看网关动态路由介绍

# 3 其他参考
[spring-boot-configuration-processor作用](https://blog.csdn.net/yuhan_0590/article/details/85100246)


