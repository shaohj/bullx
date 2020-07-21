# 1 bullx说明
java微服务后端系统开发学习，希望开发技能牛起来，希望金融市场牛起来.

## 1.1 项目结构
- bullx
  - db  数据库模块说明
    - design  设计文档
    - sql  sql文件
  - doc  项目文档
    - dev  开发记录.如技术、遇到的问题等
    - guides  项目说明文档
      - [模块说明文档](doc/guides/modules.md) 
      
## 1.2 技术框架
 * 后端：Spring boot 2.0.1、Spring Security、Oauth2、Hibernate、JPA、Redis、Freemarker。  
 * 前端：jQuery、FancyTree。
 
## 1.3 功能介绍
  系统管理功能：如用户管理、角色管理、菜单管理、组织管理、数据字典。
  redis博客：博客中心。 
   
# 2 部署
分为环境准备和应用启动阶段

## 2.1 环境准备

## 2.1.1 修改hosts文件
```
127.0.0.1 bullx-eureka
127.0.0.1 bullx-config
127.0.0.1 bullx-gateway
127.0.0.1 bullx-auth
127.0.0.1 bullx-portal

```
## 2.2.2 部署sql

## 2.2 应用启动

## 2.1 部署流程


* 导入sql.即执行psys_oauth2_db.sql和psys_sec_db.sql文件，sql脚本见source/sql目录
* 启动enreka-server
* 启动auth-server，注意修改配置文件里的mysql和redis连接参数
* 启动sec-server，注意修改配置文件里的mysql和redis连接参数
* 启动sys-web-server

## 2.2 启动成功后页面
* [eureka](http://localhost:18080/eureka-server/)
* [登录页面，账号密码为admin/admin)](http://localhost:18090/auth-server/login)
* [首页](http://localhost:18091/sys-web-server/index)

# 3 参考

## 3.1 技术选型

### 3.1.1 web容器选择
[Spring Boot 2 实战：使用 Undertow 来替代Tomcat 作为Web 容器](https://segmentfault.com/a/1190000020668553)
[Spring Boot 配置 Undertow 容器](https://www.exception.site/springboot/spring-boot-undertow)