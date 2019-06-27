<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 张钰珩
  Date: 2019/6/24
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
</body>
</html>
