<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商品详情</title>
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
							<a href="#">登陆</a>
						</li>
						<li>
							<a href="#">注册</a>
						</li>
						<li>
							<a href="/userCenter">用户中心</a>
						</li>
					</ul>
				</div>

			</nav>
		</div>
	</div>
	<!--导航栏end-->
				<div>
					<input type="hidden" name="id"
						value="${goods.id }"/><img
						src="${goods.tupian}"
						width="230px" height="230px" />
				</div>

				<div>
					${goods.mingcheng }
				</div>
				<div>
					<ul>
						<li><span>价格:</span> <strong>${goods.YQprice }元</strong></li>
						<li><span>折扣价:</span><strong>${goods.price }元</strong></li>
						<li><span>类型:</span> ${goods.typename }</li>
						<li><span>购买数量:</span><input type="text" name=""
							class="" value="1" /> (库存${goods.shuliang }件)</li>
					</ul>
				</div>
</body>
</html>
