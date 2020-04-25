## printtemplate

`printtemplate`是一款设计完整，使用在80mm热敏小票打印机上的打印模板，模板包含的模块已经满足 餐饮店堂食、外卖小票的绝大部分场景。
开箱即用，开发者可以很快速的集成到内部应用中。


### Demo

<video src="./doc/video/QQ20200425-182730-HD.mp4" controls="controls" width="500" height="300">您的浏览器不支持播放该视频！</video>


### Design

- 1.打印模板-设计输出流程：

1）根据不同的模板类型，设计小票排版的`HTML`静态页面。

2）将订单数据渲染到`HTML`文件中。

3）将渲染好的`HTML`文件发送到小票打印机，完成打印出票。

- 2.出票口设计思路

1）出票口 是一组打印规则，用于打印指定的菜品；比如配置：桌位的区域、餐饮菜品的种类、特定的商品。

2）出票口 可以配置 一品一纸、多品一纸等等。

3）出票口列表、新增出票口、删除出票口、修改出票口。


### Deployment

1.初始化数据，在MySQL中新建数据库`print_template`导`doc`目录下`init_print_template.sql`脚本。

2.服务端基于`Spring Boot`的web项目，打包成jar直接部署。（接口文档在`doc`目录下`apidoc.http`文件）

3.在项目的`h5-demo`目录中提供了一个demo，介绍了如何在浏览器中绘制一个打印模板。


### License

The project is licensed under the Apache 2 license.
