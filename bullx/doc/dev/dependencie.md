# 1 dependencie
描述依赖的第三方组件或依赖的作用等

# 2 组件汇总及参考文献
- spring-boot 两种导入方式
  - [spring-boot-starter-parent与spring-boot-dependencies](https://www.cnblogs.com/sjshare/p/10669001.html)
- spring-cloud 导入方式
  - [spring-cloud-dependencies作用](https://blog.csdn.net/qq_41813208/article/details/105899091)
- spring-boot-configuration-processor  配置文件处理器
  - [spring-boot-configuration-processor作用](https://blog.csdn.net/yuhan_0590/article/details/85100246)
- spring-boot-starter-json  json
  - [Spring Boot中Jackson应用详解](https://blog.51cto.com/7308310/2310930)
  - [Spring Boot 之使用 Json 详解](https://www.cnblogs.com/jingmoxukong/p/10200916.html)
- spring-boot-starter-actuator 健康监控，动态路由
  - [Spring Boot (十九)：使用 Spring Boot Actuator 监控应用](http://www.ityouknow.com/springboot/2018/02/06/spring-boot-actuator.html)
  - [spring-boot-starter-actuator](https://www.jianshu.com/p/d57dc9f2e0d9)

# 3 notes

## 3.1 健康监控
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
