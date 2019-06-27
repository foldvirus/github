<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 张钰珩
  Date: 2019/6/19
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="before">校内二手图书交易平台</a>
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
    <!--导航栏end-->
<%--<form action="pinglun" method="post">--%>
    <%--请输入你的评论：--%>
    <%--<input type="text" name="content"/>--%>
    <%--<input type="submit" value="添加"/>--%>

<%--</form>--%>






    <div class="row">
        <div class="col-md-12 ">
            <form class="form-horizontal" method="post" action="pinglun">
                <!-- 表单区域-->
                <fieldset>
                    <!--表单主题-->
                    <legend>评价</legend>
                    <!-- 每一个form-group都可以自定义布局-->
                    <div class="form-group">
                        <!-- label表示文字提示标签,可以通过表单的组建的id提示-->
                        <label class="col-md-2 control-label" for="pinglun">请输入你的评价</label>
                        <div class="col-md-4">
                            <textarea class="form-control" id="pinglun" type="text" name="content"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                            <input class="btn btn-primary" type="submit" value="评价"/>
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
