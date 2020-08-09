# 1 bullx-config
组件主要功能如下
- bullx-config 配置中心
  - 配置中心.

# 2 notes

## 2.1 spring cloud配置加载顺序
实际例举有点多，先大概说明下优先级规则(优先级和加载顺序一般来说是反的，有的配置中心不允许被覆盖)，后续会汇总核对下：
```
* 配置中心仓库 > 本地
* projectname[-{profile}] > application[-{profile}]
* application[-{profile}] > bootstrap[-{profile}].properties bootstrap比application.properties先加载
* application[-{profile}] > application.properties 默认的比[-{profile}]先加载
* ...
```

## 2.2 编码问题
异常信息： java.lang.IllegalStateException: Failed to load property source from location 'classpath:/application.yml'
解决方案：修改编码为utf-8.详见[编码报错解决](https://blog.csdn.net/Suviky/article/details/80878665)

## 2.3 配置中心验证
启动后浏览器直接访问http://localhost:18090/bullx-gateway/local即可，实际访问的是bullx-config项目的'classpath:config\bullx-gateway-local.yml'配置文件

# 3 参考文献
- 配置中心
  - [Spring Cloud配置参数优先级](http://www.itersblog.com/archives/4.html)
  - [Spring-cloud Config Server 3种配置方式](https://blog.csdn.net/liangweihua123/article/details/80914625)
