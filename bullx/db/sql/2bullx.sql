DROP TABLE bullx_user;
CREATE TABLE bullx_user(
    user_id INT NOT NULL AUTO_INCREMENT  COMMENT '用户id' ,
    user_code VARCHAR(32) NOT NULL   COMMENT '用户code' ,
    real_name VARCHAR(64)    COMMENT '姓名' ,
    username VARCHAR(64) NOT NULL   COMMENT '用户名' ,
    password VARCHAR(255) NOT NULL   COMMENT '密码' ,
    salt VARCHAR(255)    COMMENT '随机盐' ,
    mobile VARCHAR(20)    COMMENT '手机' ,
    avatar VARCHAR(255)    COMMENT '头像' ,
    email VARCHAR(32)    COMMENT '邮箱' ,
    lock_flag CHAR(1)    COMMENT '状态：0-正常，9-锁定' ,
    sex CHAR(1)    COMMENT '性别：1-男，2-女；3-其他' ,
    group_code VARCHAR(32)    COMMENT '组code' ,
    is_admin CHAR(1)    COMMENT '内置管理员：Y-是；N或其它-否' ,
    created_by VARCHAR(32)    COMMENT '创建人' ,
    created_time DATETIME    COMMENT '创建时间' ,
    updated_by VARCHAR(32)    COMMENT '更新人' ,
    updated_time DATETIME    COMMENT '更新时间' ,
    del_flag CHAR(1)    COMMENT '删除标注：0-正常，1-删除' ,
    tenant_id INT    COMMENT '租户id' ,
    PRIMARY KEY (user_id)
) COMMENT = '用户表 ';

DROP TABLE bullx_group;
CREATE TABLE bullx_group(
    group_id INT NOT NULL AUTO_INCREMENT  COMMENT '组织id' ,
    group_code VARCHAR(32) NOT NULL   COMMENT '组织code' ,
    name VARCHAR(64) NOT NULL   COMMENT '组织名称' ,
    parent_id VARCHAR(32) NOT NULL   COMMENT '父组织ID' ,
    group_desc VARCHAR(255)    COMMENT '描述' ,
    is_sys_res CHAR(1)    COMMENT '内置资源：0-是，1-否' ,
    created_by VARCHAR(32)    COMMENT '创建人' ,
    created_time DATETIME    COMMENT '创建时间' ,
    updated_by VARCHAR(32)    COMMENT '更新人' ,
    updated_time DATETIME    COMMENT '更新时间' ,
    del_flag CHAR(1)    COMMENT '删除标注：0-正常，1-删除' ,
    untitled INT    COMMENT '租户id' ,
    PRIMARY KEY (group_id)
) COMMENT = '组织表 ';

DROP TABLE bullx_role;
CREATE TABLE bullx_role(
    role_id INT NOT NULL AUTO_INCREMENT  COMMENT '角色id' ,
    role_code VARCHAR(32) NOT NULL   COMMENT '角色code' ,
    role_name VARCHAR(64) NOT NULL   COMMENT '角色名称' ,
    role_desc VARCHAR(255)    COMMENT '描述' ,
    created_by VARCHAR(32)    COMMENT '创建人' ,
    create_time DATETIME    COMMENT '创建时间' ,
    updated_by VARCHAR(32)    COMMENT '更新人' ,
    updated_time DATETIME    COMMENT '更新时间' ,
    del_flag CHAR(1)    COMMENT '删除标注：0-正常，1-删除' ,
    tenant_id INT    COMMENT '租户id' ,
    PRIMARY KEY (role_id)
) COMMENT = '角色表 ';

DROP TABLE bullx_menu;
CREATE TABLE bullx_menu(
    menu_id INT NOT NULL AUTO_INCREMENT  COMMENT '菜单id' ,
    menu_code VARCHAR(32) NOT NULL   COMMENT '菜单code' ,
    name VARCHAR(45) NOT NULL   COMMENT '菜单名称' ,
    permission VARCHAR(32)    COMMENT '菜单权限标识' ,
    parent_id VARCHAR(32) NOT NULL   COMMENT '父资源id,无则为-1' ,
    path VARCHAR(128)    COMMENT '前端URL' ,
    icon VARCHAR(32)    COMMENT '图标' ,
    component VARCHAR(64)    COMMENT 'vue页面' ,
    sort INT    COMMENT '排序值' ,
    menu_desc VARCHAR(255)    COMMENT '描述' ,
    new_window CHAR(1)    COMMENT '是否打开新窗口：0-是，1-否' ,
    is_sys_res CHAR(1)    COMMENT '内置资源：0-是，1-否' ,
    created_by VARCHAR(32)    COMMENT '创建人' ,
    created_time DATETIME    COMMENT '创建时间' ,
    updated_by VARCHAR(32)    COMMENT '更新人' ,
    updated_time DATETIME    COMMENT '更新时间' ,
    del_flag CHAR(1)    COMMENT '删除标注：0-正常，1-删除' ,
    PRIMARY KEY (menu_id)
) COMMENT = '菜单表 ';

DROP TABLE bullx_user_role;
CREATE TABLE bullx_user_role(
    user_code VARCHAR(32) NOT NULL   COMMENT '用户code' ,
    role_code VARCHAR(32) NOT NULL   COMMENT '角色code' ,
    PRIMARY KEY (user_code,role_code)
) COMMENT = '用户角色关系表 ';

DROP TABLE bullx_group_role;
CREATE TABLE bullx_group_role(
    group_code VARCHAR(32) NOT NULL   COMMENT '组织code' ,
    role_code VARCHAR(32) NOT NULL   COMMENT '角色code' ,
    PRIMARY KEY (group_code,role_code)
) COMMENT = '组织角色关系表 ';

DROP TABLE bullx_role_menu;
CREATE TABLE bullx_role_menu(
    role_code VARCHAR(32) NOT NULL   COMMENT '角色code' ,
    menu_code VARCHAR(32) NOT NULL   COMMENT '菜单code' ,
    PRIMARY KEY (role_code,menu_code)
) COMMENT = '角色菜单关系表 ';

DROP TABLE bullx_route_conf;
CREATE TABLE bullx_route_conf(
    id INT NOT NULL AUTO_INCREMENT  COMMENT '主键' ,
    route_name VARCHAR(32)    COMMENT '路由名称' ,
    route_id VARCHAR(32) NOT NULL   COMMENT '路由ID' ,
    predicates JSON    COMMENT '断言' ,
    filters JSON    COMMENT '过滤器' ,
    uri VARCHAR(50)    COMMENT 'uri' ,
    sort INT   DEFAULT 0 COMMENT '排序' ,
    created_by VARCHAR(32)    COMMENT '创建人' ,
    create_time DATETIME    COMMENT '创建时间' ,
    updated_by VARCHAR(32)    COMMENT '更新人' ,
    update_time DATETIME    COMMENT '更新时间' ,
    del_flag CHAR(1)    COMMENT '删除标注：0-正常，1-删除' ,
    PRIMARY KEY (id)
) COMMENT = '路由配置表 ';

DROP TABLE bullx_oauth_client_details;
CREATE TABLE bullx_oauth_client_details(
    client_id VARCHAR(32) NOT NULL   COMMENT 'client_id' ,
    resource_ids VARCHAR(256)    COMMENT 'resource_ids' ,
    client_secret VARCHAR(256)    COMMENT 'client_secret' ,
    scope VARCHAR(256)    COMMENT 'scope' ,
    authorized_grant_types VARCHAR(256)    COMMENT 'authorized_grant_types' ,
    web_server_redirect_uri VARCHAR(256)    COMMENT 'web_server_redirect_uri' ,
    authorities VARCHAR(256)    COMMENT 'authorities' ,
    access_token_validity INT    COMMENT 'access_token_validity' ,
    refresh_token_validity INT    COMMENT 'refresh_token_validity' ,
    additional_information VARCHAR(4096)    COMMENT 'additional_information' ,
    autoapprove VARCHAR(256)    COMMENT 'autoapprove' ,
    tenant_id INT    COMMENT '所属租户' ,
    PRIMARY KEY (client_id)
) COMMENT = '终端信息表 ';

DROP TABLE bullx_log;
CREATE TABLE bullx_log(
    id BIGINT(19) NOT NULL AUTO_INCREMENT  COMMENT '编号' ,
    type CHAR(1)    COMMENT '日志类型' ,
    title VARCHAR(255)    COMMENT '日志标题' ,
    service_id VARCHAR(32)    COMMENT '服务ID' ,
    remote_addr VARCHAR(255)    COMMENT '操作IP地址' ,
    user_agent VARCHAR(1000)    COMMENT '用户代理' ,
    request_uri VARCHAR(255)    COMMENT '请求URI' ,
    method VARCHAR(10)    COMMENT '操作方式' ,
    params TEXT    COMMENT '操作提交的数据' ,
    time MEDIUMTEXT    COMMENT '执行时间' ,
    exception TEXT    COMMENT '异常信息' ,
    create_by VARCHAR(32)    COMMENT '创建者' ,
    create_time DATETIME    COMMENT '创建时间' ,
    tenant_id INT    COMMENT '所属租户' ,
    PRIMARY KEY (id)
) COMMENT = '日志表 ';

DROP TABLE bullx_code;
CREATE TABLE bullx_code(
    id BIGINT(19) NOT NULL AUTO_INCREMENT  COMMENT 'ID' ,
    code VARCHAR(32) NOT NULL   COMMENT '编码' ,
    parent_id VARCHAR(32) NOT NULL   COMMENT '父字典编码' ,
    type VARCHAR(32)    COMMENT '字典类型' ,
    code_type VARCHAR(32) NOT NULL   COMMENT '编码类别' ,
    name VARCHAR(64) NOT NULL   COMMENT '名称' ,
    value VARCHAR(64) NOT NULL   COMMENT '值' ,
    no INT    COMMENT '序号' ,
    is_leaf CHAR(1)    COMMENT '是否是叶子节点' ,
    remark VARCHAR(1000)    COMMENT '备注' ,
    is_sys_res CHAR(1)    COMMENT '内置资源：Y-是；N或其它-否' ,
    created_by VARCHAR(32)    COMMENT '创建人' ,
    created_time DATETIME    COMMENT '创建时间' ,
    updated_by VARCHAR(32)    COMMENT '更新人' ,
    updated_time DATETIME    COMMENT '更新时间' ,
    del_flag CHAR(1)    COMMENT '删除标注：0-正常，1-删除' ,
    PRIMARY KEY (id)
) COMMENT = '数据字典表 ';

DROP TABLE bullx_sn;
CREATE TABLE bullx_sn(
    id BIGINT(19) NOT NULL AUTO_INCREMENT  COMMENT 'ID' ,
    type VARCHAR(32)    COMMENT '序号类型' ,
    expression VARCHAR(128)    COMMENT '表达式格式' ,
    sn BIGINT(19)    COMMENT '当前序号值' ,
    created_by VARCHAR(32)    COMMENT '创建人' ,
    created_time DATETIME    COMMENT '创建时间' ,
    updated_by VARCHAR(32)    COMMENT '更新人' ,
    updated_time DATETIME    COMMENT '更新时间' ,
    del_flag CHAR(1)    COMMENT '删除标注：0-正常，1-删除' ,
    PRIMARY KEY (id)
) COMMENT = 'code序号管理表 ';
