# 1 bullx-auth
组件主要功能如下
- bullx-auth 认证中心
  - 认证中心.oauth2实现的单点登录服务器

# 2 notes

## 2.1 oauth2客户端认证不成功
oauth2使用时,下列配置项需要配置,否则oauth2会认证不成功。```server.servlet.context-path: /eureka-server```

# 3 参考文献
- 配置中心
  - [Spring Cloud下微服务权限方案](https://zhuanlan.zhihu.com/p/29345083)
  - [RBAC权限模型——项目实战](https://www.bbsmax.com/A/x9J2L4qNd6/)