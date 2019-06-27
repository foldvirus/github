<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 张钰珩
  Date: 2019/6/23
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加收货地址</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="row clearfix">
    <div class="col-md-12 column">
        <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">校内二手图书交易平台</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <%--<form class="navbar-form navbar-left" role="search">--%>
                <form action="search" name="myForm" method="post" class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" name="mykey" value=""  onfocus="clearValue()" class="form-control" />
                    </div> <button type="submit" class="btn btn-default">Submit</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <c:if test="${bruser!=null}"><a href="">欢迎 ${bruser.bemail }</a></c:if>
                        <c:if test="${bruser==null}"><a href="toLogin">登录</a>
                    </li>
                    <li>
                        <a href="#">注册</a>
                    </li>
                    </c:if>
                    <li>
                        <a href="userCenter">用户中心</a>
                    </li>
                    <c:if test="${bruser!= null}">
                        <li><a href="user/exit">退出</a><span
                                class="xx"></span></li>
                    </c:if>
                </ul>
            </div>

        </nav>
    </div>
</div>




<%--<form action="address" method="post">--%>
    <%--姓名：<input type="text" name="name">--%>
    <%--电话号码：<input type="text" name="userphone">--%>
    <%--地址：<input type="text" name="address">--%>
    <%--<button type="submit">提交</button>--%>
<%--</form>--%>


    <div class="row">
        <div class="col-md-12 ">
            <form class="form-horizontal" method="post" action="address">
                <!-- 表单区域-->
                <fieldset>
                    <!--表单主题-->
                    <legend>收货地址</legend>
                    <!-- 每一个form-group都可以自定义布局-->
                    <div class="form-group">
                        <!-- label表示文字提示标签,可以通过表单的组建的id提示-->
                        <label class="col-md-2 control-label" for="name">收货人姓名</label>
                        <div class="col-md-4">
                            <input class="form-control" id="name" type="text" name="name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <!-- label表示文字提示标签,可以通过表单的组建的id提示-->
                        <label class="col-md-2 control-label" for="tel">收货人电话</label>
                        <div class="col-md-4">
                            <input class="form-control" id="tel" type="text" name="userphone"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <!-- label表示文字提示标签,可以通过表单的组建的id提示-->
                        <label class="col-md-2 control-label" for="address">收货人地址</label>
                        <div class="col-md-4">
                            <input class="form-control" id="address" type="text" name="address"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                            <input class="btn btn-primary" type="submit" value="提交"/>
                            <input class="btn btn-warning" type="reset" value="重置"/>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>

</div>
</body>
</html>
