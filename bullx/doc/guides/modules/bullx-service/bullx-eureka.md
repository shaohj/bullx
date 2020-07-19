# 1 bullx-eureka
注册中心

# 2 参考
[用security为eureka（注册中心）添加简单的用户认证](https://blog.csdn.net/sinat_21184471/article/details/78335937)

# 3 笔记

# 3.1 eureka-server部署到不同服务器时,节点找不到eureka服务器情况
节点需要找到注册服务器的主机,可以手动改下host文件,配置eureka服务器的服务器名指向其ip地址  
示例: eureka-server注册服务器web服务器地址为: http://域名或ip:18080/eureka-server  
进去可以看到 jdu4e00u53f7:sec-server:18081,其中jdu4e00u53f7是注册服务器的服务器名称,修改下hosts文件即可.如:```IP jdu4exxxx```