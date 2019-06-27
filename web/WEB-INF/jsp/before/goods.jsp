<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 张钰珩
  Date: 2019/6/22
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function clearValue(){
            document.myForm.mykey.value = "";
        }
    </script>
    <style>
        .itemgood_nr{padding:10px 0; background:#fff;}
        .itemgood_nr li{width:142px; float:left; padding:6px 0 0 13px;}
        .itemgood_nr li div{border:1px solid #ccc;float:left;}
        .itemgood_nr li .pic{width:130px; float:left; padding:5px;}
        .itemgood_nr li .pic img{ width:130px; height:130px;}
        .itemgood_nr li .wz{float:left;width:140px; padding-top:3px; line-height:20px; border-top:1px dotted #ccc; text-align:center; background:#f8f8f8;}
        .itemgood_nr li .wz strong{ font-size:14px;}
        .itemgood_nr li .wz em{ display:block; color:#999;}
        .itemgood_nr li .wz span{ font-size:14px; color:#f30; padding-right:3px;}
        .clearfix:after{
            content:"."; display:block; height:0; clear:both;
            visibility:hidden;
        }
        *html .clearfix{
            height:1%;
        }
        *+html .clearfix{
            height:1%;
        }



        .title_bt{height:33px; line-height:33px; font-size:12px;  padding:0 10px; font-weight:bold;}
        .title_bt h3{height:33px; line-height:33px; text-align:left;
            font-weight:bold;  padding-left:12px; font-size:12px;}
        .title_bt span{ float:right; padding-right:10px; }
        .title_bt em{float:left;height:33px; line-height:33px; text-align:left;
            font-weight:bold;  padding-left:18px;}


        .blank5{height:5px; line-height:5px;/* _margin:-3px 0;*/ clear:both; visibility:hidden;}

        .ared a:link,.ared a:visited{color:#333; text-decoration:none;}
        .ared a:hover,.ared a:active{color:#ff6600; text-decoration:none;}

        .box_color{border:1px solid #ccc; border-top:2px solid #f28300;background-color:#fff; }

        .box{background:#f1f1f1; padding-bottom:2px; overflow:hidden;}
    </style>
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




    <!--商品分类-->
    <div class="row clearfix">
        <div class="col-md-3 column">
            <div class="tabbable" id="tabs-343692">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-259365" data-toggle="tab">分类（年级）</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="panel-259365">
                        <p>
                        <ul>
                            <c:forEach items="${goodsType}" var="g">
                                <li><a href="goods?id=${g.id }">
                                        ${g.typename }</a>
                                </li>
                            </c:forEach>
                        </ul>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!--商品分类end-->


        <!--所有商品列表-->
        <div class="col-md-9 column">
        <div class="blank5"></div>
        <div class="box">
            <div class="box_color ared">
                <div class="title_bt">
                    <span><a href="#">更多</a></span>
                    <h3>所有商品</h3>
                </div>
                <div class="itemgood_nr clearfix">
                    <ul style="list-style: none;">
                        <c:forEach items="${getGoods }" var="gd">
                            <li>
                                <div>
                                    <p class="pic">
                                        <a href="goodsDetail?id=${gd.id }">
                                            <img src="${gd.tupian}" /></a>
                                    </p>
                                    <p class="wz">
                                        <strong><a href="goodsDetail?id=${gd.id }">${gd.mingcheng }</a></strong>
                                        <em>现价:<span>￥${gd.price}</span></em>
                                    </p>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <!--所有商品列表end-->
    </div>
    </div>
</div>
</body>
</html>
