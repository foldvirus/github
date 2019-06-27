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
<title>用户中心</title>
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
		<div class="location ared">
			我的订单
		</div>
		<div>
			<div>
				<%--<table>--%>
					<%--<tr>--%>
						<%--<th>订单编号</th>--%>
						<%--<th>订单信息</th>--%>
						<%--<th>订单信息</th>--%>
						<%--<th>订单信息</th>--%>
						<%--<th>订单金额</th>--%>
						<%--<th>订单地址</th>--%>
						<%--<th>订单电话</th>--%>
						<%--<th>订单日期</th>--%>
						<%--<th>订单状态</th>--%>
						<%--<th>详情</th>--%>
					<%--</tr>--%>
					<%--<c:forEach var="mo" items="${myOrder}"> --%>
						<%--<tr>--%>
							<%--<td>${mo.bianhao}</td>--%>
							<%--<td>${mo.name}</td>--%>
							<%--<td><img src="${mo.tupian}" /></td>--%>
							<%--<td>${mo.shuliang}</td>--%>
							<%--<td>${mo.zongjia}</td>--%>
							<%--<td>${mo.address}</td>--%>
							<%--<td>${mo.tel}</td>--%>
							<%--<td>${mo.time}</td>--%>
							<%--<td>${mo.zhuangtai}</td>--%>

							<%--<td>--%>
							<%--<c:if test="${mo.zhuangtai == 0}" >--%>
							<%--未付款&nbsp;&nbsp;--%>
							<%--<a href="">去支付</a>--%>
							<%--</c:if>--%>
							<%--<c:if test="${mo.zhuangtai == 1}" >已付款--%>
								<%--&lt;%&ndash;<a href="/pinglun" target="">去评价</a>&ndash;%&gt;--%>
								<%--<a href="pinglun?Spid=${mo.id }">去评价</a>--%>
							<%--</c:if>--%>
							<%--</td>--%>
							<%--<td>--%>
							<%--<a href="orderDetail?ordersn=${mo.id}" target="_blank">详情</a>--%>
							<%--</td>--%>
						<%--</tr>--%>
					<%--</c:forEach>--%>
				<%--</table>--%>
			<%--</div>--%>
		<%--</div>--%>
		<%--<div>--%>
			<%--我的商品--%>
		<%--</div>--%>
		<%--<div></div>--%>
		<%--<div>--%>
			<%--<div>--%>
				<%--<table>--%>
					<%--<tr>--%>
						<%--<th>商品编号</th>--%>
						<%--<th>商品名称</th>--%>
						<%--<th>商品图片</th>--%>
						<%--<th>商品原价</th>--%>
						<%--<th>商品现价</th>--%>
						<%--<th>商品数量</th>--%>
						<%--<th>商品类型</th>--%>
						<%--<th>去看看</th>--%>
					<%--</tr>--%>
					<%--<c:forEach items="${myGoods}" var="my">--%>
						<%--<tr>--%>
							<%--<td>${my.id}</td>--%>
							<%--<td>${my.mingcheng}</td>--%>
							<%--<td> <img src="images/before/${sg.tupian}" /></td>--%>
							<%--<td>${my.YQprice}</td>--%>
							<%--<td>${my.price}</td>--%>
							<%--<td>${my.shuliang}</td>--%>
							<%--<td>${my.goodstype_id}</td>--%>
						<%--</tr>--%>
					<%--</c:forEach>--%>

				<%--</table>--%>








                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>订单编号</th>
                            <th>收货人名</th>
                            <th>订单金额</th>
                            <th>收货人地址</th>
                            <th>收货人电话</th>
                            <th>订单日期</th>
                            <th>订单状态</th>
                            <th>评价</th>
                            <th>详情</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="mo" items="${myOrder}">
                        <tr class="success">
                        <td>${mo.bianhao}</td>
                        <td>${mo.name}</td>
                        <td>${mo.total}</td>
                        <td>${mo.address}</td>
                        <td>${mo.tel}</td>
                        <td>${mo.time}</td>
                        <%--<td>${mo.zhuangtai}</td>--%>
                            <td>
                            <c:if test="${mo.zhuangtai == 0}" >未付款 </c:if>
                            <c:if test="${mo.zhuangtai == 1}" >已付款 </c:if>
                            </td>
                        <td>
                        <c:if test="${mo.zhuangtai == 0}" >
                        <%--未付款&nbsp;&nbsp;--%>
                        <a href="">去支付</a>
							</c:if>
							<c:if test="${mo.zhuangtai == 1}" >
								<a href="topinglun?Spid=${mo.id }">去评价</a>
							</c:if>
						</td>
							<td>
								<a href="orderDetail?id=${mo.id}" target="_blank">详情</a>
                        </td>
                        </tr>
                        </c:forEach>

						<c:forEach items="${orders}" var="my">
							<tr>
								<td>${my.id}</td>
								<td>${my.mingcheng}</td>
								<td> <img src="${my.tupian}" /></td>
								<td>${my.YQprice}</td>
								<td>${my.price}</td>
								<td>${my.shuliang}</td>
								<td>${my.typename}</td>
								<td><a href="goodsDetail?id=${my.goodid}">详情</a> </td>
							</tr>
						</c:forEach>
                        </tbody>
                    </table>




                    <div class="location ared">
                        我的商品
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                        <tr>
                            <th>商品编号</th>
                            <th>商品名称</th>
                            <th>商品图片</th>
                            <th>商品原价</th>
                            <th>商品现价</th>
                            <th>商品数量</th>
                            <th>商品类型</th>
                            <th>去看看</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${myGoods}" var="my">
                        <tr>
                        <td>${my.id}</td>
                        <td>${my.mingcheng}</td>
                        <td> <img src="${my.tupian}" /></td>
                        <td>${my.YQprice}</td>
                        <td>${my.price}</td>
                        <td>${my.shuliang}</td>
                        <td>${my.typename}</td>
                            <td><a href="goodsDetail?id=${my.goodid}">详情</a> </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>































			</div>
		</div>
	</div>
</body>
</html>