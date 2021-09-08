# Egg + React 全栈开发记账本---后台服务代码

后台服务采用 Node 的上层架构 Egg.js，它是由阿里研发维护的，并且是基于 Koa 框架开发，有着高度可扩展的插件机制  
数据库使用的则是 MySQL  

## [前端页面代码https://github.com/Willmind/cash_book-frontEnd](https://github.com/Willmind/cash_book-frontEnd)

## 项目启动

```bash
# 进入项目文件夹
cd init

# 安装依赖
cnpm install

# 项目运行(开启项目前请确保MySQL数据库已开启,sql文件在根目录下面的sql文件夹下)
npm run dev

项目开启后默认在 http://127.0.0.1:7001/,请确保前端项目转发到此地址
```
## 项目结构树
```bash
├── init
│   ├── README.md
│   ├── app
│   │   ├── controller  # 用于解析用户的输入，处理后返回相应的结果
│   │   │   ├── bill.js  # 账单
│   │   │   ├── home.js  # 主页
│   │   │   ├── upload.js  # 上传
│   │   │   └── user.js  # 用户
│   │   ├── middleware  # 中间件
│   │   │   └── jwtErr.js  # 用户鉴权
│   │   ├── public  # 静态资源
│   │   │   └── upload  # 个人头像上传文件夹
│   │   ├── router.js # 用于配置 URL 路由规则
│   │   └── service   # 复杂业务场景下用于做业务逻辑封装的一个抽象层（此项目中为后台与mysql数据库做的一些增删改查操作）
│   │       ├── bill.js  # 账单操作逻辑
│   │       ├── home.js	 # 主页
│   │       └── user.js  # 用户
│   ├── config
│   │   ├── config.default.js  # 白名单配置及其他常用配置
│   │   └── plugin.js  # 配置需要加载的插件
│   ├── jsconfig.json
│   ├── package.json
│   ├── sql  # 本项目中运行的数据库文件事例
│   │   └── juejue-cost.sql 
```

##项目知识点

### Egg.js
Egg 作为一套解决方案，它内部高度集成了封装好的项目目录结构，现代开发俗称“约定式开发”。正常情况下，你从 0 开始搭建一个 Node 服务端代码，需要结合很多工具插件来辅助完成项目的搭建，而 Egg 则提前为你提供好了这些繁琐的初始工作，让你能专心与业务层面的开发.  
#### controller
用于解析用户的输入，处理后返回相应的结果。上述我们也提到了，通过请求路径将用户的请求基于 method 和 URL 分发到对应的 Controller 上，而 Controller 要做的事情就是响应用户的诉求。
#### service
简单来说，Service 就是在复杂业务场景下用于做业务逻辑封装的一个抽象层。上述初始化项目中未声明 service 文件夹，它是可选项，但是官方建议我们操作业务逻辑最好做一层封装。我们换一种理解方式，Service 层就是用于数据库的查询，我们尽量将粒度细化，这样以便多个 Controller 共同调用同一个 Service。
#### middleware
用于编写中间件，中间件的概念就是在路由配置里设置了中间件的路由，每次请求命中后，都要过一层中间件。

### 编写基础的 GET 和 POST 接口

### MySQL数据库的连接与可视化操作工具Navicat的使用

### egg-jwt用户鉴权中间件
本项目采用的鉴权模式是 token 令牌模式
- 注册接口
- 登录接口
- 登录验证中间件

### 用户信息相关接口
- 获取、修改个人信息
- 上传图片

### 账单及其相关接口实现
- 新增账单接口
- 账单列表获取
- 账单修改接口
- 账单删除接口
- 数据图表模块




