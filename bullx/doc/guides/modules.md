# modules
以下是各个模块的简要说明。后续小节会分别介绍各个模块，以及模块开发中的主要框架或技术点
- bullx  
  - [通用模块聚合包](modules/bullx-common.md)
  - [持久层](modules/bullx-persist.md)
  - [持久层service](modules/bullx-service.md) 
  - bullx-server  微服务层.描述格式为：`[启动顺序数值]`，数值越小越优先  
    - [注册中心](modules/bullx-service/bullx-eureka.md)  [1]  
    - [配置中心](modules/bullx-service/bullx-config.md)  [2]  
    - [门户](modules/bullx-service/bullx-portal.md)  [3] 启动时会初始化动态路由到redis中，因此需比网关早启动  
    - [认证中心](modules/bullx-service/bullx-auth.md)  [3]  
    - [网关](modules/bullx-service/bullx-gateway.md)  [4] 
