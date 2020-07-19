# record
分模块记录开发过程技术心得或踩坑注意事项

## bullx-common
基础工具类

## bullx-persist
持久层

## bullx-service
持久层service

## bullx-server
对外微服务层.描述格式为：[启动顺序数值]，数值越小越优先

### bullx-eureka
注册中心

#### eureka-server部署到不同服务器时,节点找不到eureka服务器情况
节点需要找到注册服务器的主机,可以手动改下host文件,配置eureka服务器的服务器名指向其ip地址  
示例: eureka-server注册服务器web服务器地址为: http://域名或ip:18080/eureka-server  
进去可以看到 jdu4e00u53f7:sec-server:18081,其中jdu4e00u53f7是注册服务器的服务器名称,修改下hosts文件即可.如:```IP jdu4exxxx```

### bullx-config
配置中心

### bullx-gateway
网关

### bullx-auth
认证中心.oauth2实现的单点登录服务器

#### oauth2客户端认证不成功
oauth2使用时,下列配置项需要配置,否则oauth2会认证不成功。```server.servlet.context-path: /eureka-server```

### bullx-portal
门户







