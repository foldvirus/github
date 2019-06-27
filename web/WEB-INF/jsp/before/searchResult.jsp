<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<title>搜索结果</title>
<%--<link href="css/before/daohang.css" rel="stylesheet" type="text/css" />--%>
<%--<link href="css/before/common.css" rel="stylesheet" type="text/css" />--%>
<%--<link href="css/before/style.css" rel="stylesheet" type="text/css" />--%>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">

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











	<table class="table table-striped table-hover">
		<thead>
		<tr>
			<th>商品编号</th>
			<th>商品名称</th>
			<th>商品图片</th>
			<th>商品价格</th>
			<th>去看看</th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${searchlist }" var="mf">
			<tr>
				<td>${mf.id }</td>
				<td >${mf.mingcheng }</td>
				<td><img src="${mf.tupian }" border="0" title="${mf.mingcheng }" />
				</td>
				<td >${mf.price }</td>
				<td ><a href="goodsDetail?id=${mf.id}">去看看</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

















	<%--<div class="blank"></div>--%>
	<%--<div class="block clearfix">--%>
		<%--<div class="location ared">当前位置： <a href="before?id=0">首页</a> > 搜索结果</div>--%>
		<%--<div class="blank"></div>--%>
		<%--<div>--%>
			<%--<div class="nFlowBox">--%>
				<%--<table width="99%" align="center" border="0" cellpadding="5"--%>
					<%--cellspacing="1" bgcolor="#dddddd">--%>
					<%--<tr>--%>
						<%--<th>商品编号</th>--%>
						<%--<th>商品名称</th>--%>
						<%--<th>商品图片</th>--%>
						<%--<th>商品价格</th>--%>
						<%--<th>去看看</th>--%>
					<%--</tr>--%>
					<%--<tr>--%>
						<%--<td colspan="5" height="15px"--%>
							<%--style="border: 0 none; background: #FFF"></td>--%>
					<%--</tr>--%>
					<%--<c:forEach items="${searchlist }" var="mf">--%>
						<%--<tr>--%>
							<%--<td bgcolor="#ffffff" align="center">${mf.id }</td>--%>
							<%--<td bgcolor="#ffffff" align="center">${mf.mingcheng }</td>--%>
							<%--<td align="center" bgcolor="#ffffff" height="60px"><img--%>
								<%--style="width: 50px; height: 50px;"--%>
								<%--src="${mf.tupian }" border="0" title="${mf.mingcheng }" />--%>
							<%--</td>--%>
							<%--<td align="center" bgcolor="#ffffff">${mf.price }</td>--%>
							<%--<td align="center" bgcolor="#ffffff"><a--%>
								<%--style="text-decoration: none;" class="f6"--%>
								<%--href="goodsDetail?id=${mf.id}">去看看</a></td>--%>
						<%--</tr>--%>
					<%--</c:forEach>--%>
				<%--</table>--%>
			<%--</div>--%>
		<%--</div>--%>
	<%--</div>--%>
</div>
</body>
</html>
