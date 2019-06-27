<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>登录页面</title>
    <%--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">--%>
    <%--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>--%>
    <%--<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
    <script type="text/javascript">
        //确定按钮
        function gogo(){
            document.loginform.submit();
        }
        //取消按钮
        function cancel(){
            document.loginform.action="";
        }
        function refreshCode(){
            document.getElementById("code").src = "validateCode?" + Math.random();
        }
    </script>
    <style type="text/css">
        .form-bg{
            background: #00b4ef;
        }
        .form-horizontal{
            background: #fff;
            padding-bottom: 40px;
            border-radius: 15px;
            text-align: center;
        }
        .form-horizontal .heading{
            display: block;
            font-size: 35px;
            font-weight: 700;
            padding: 35px 0;
            border-bottom: 1px solid #f0f0f0;
            margin-bottom: 30px;
        }
        .form-horizontal .form-group{
            padding: 0 40px;
            margin: 0 0 25px 0;
            position: relative;
        }
        .form-horizontal .form-control{
            background: #f0f0f0;
            border: none;
            border-radius: 20px;
            box-shadow: none;
            padding: 0 20px 0 45px;
            height: 40px;
            transition: all 0.3s ease 0s;
        }
        .form-horizontal .form-control:focus{
            background: #e0e0e0;
            box-shadow: none;
            outline: 0 none;
        }
        .form-horizontal .form-group i{
            position: absolute;
            top: 12px;
            left: 60px;
            font-size: 17px;
            color: #c8c8c8;
            transition : all 0.5s ease 0s;
        }
        .form-horizontal .form-control:focus + i{
            color: #00b4ef;
        }
        .form-horizontal .fa-question-circle{
            display: inline-block;
            position: absolute;
            top: 12px;
            right: 60px;
            font-size: 20px;
            color: #808080;
            transition: all 0.5s ease 0s;
        }
        .form-horizontal .fa-question-circle:hover{
            color: #000;
        }
        .form-horizontal .main-checkbox{
            float: left;
            width: 20px;
            height: 20px;
            background: #11a3fc;
            border-radius: 50%;
            position: relative;
            margin: 5px 0 0 5px;
            border: 1px solid #11a3fc;
        }
        .form-horizontal .main-checkbox label{
            width: 20px;
            height: 20px;
            position: absolute;
            top: 0;
            left: 0;
            cursor: pointer;
        }
        .form-horizontal .main-checkbox label:after{
            content: "";
            width: 10px;
            height: 5px;
            position: absolute;
            top: 5px;
            left: 4px;
            border: 3px solid #fff;
            border-top: none;
            border-right: none;
            background: transparent;
            opacity: 0;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
        }
        .form-horizontal .main-checkbox input[type=checkbox]{
            visibility: hidden;
        }
        .form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
            opacity: 1;
        }
        .form-horizontal .text{
            float: left;
            margin-left: 7px;
            line-height: 20px;
            padding-top: 5px;
            text-transform: capitalize;
        }
        .form-horizontal .btn{
            float: right;
            font-size: 14px;
            color: #fff;
            background: #00b4ef;
            border-radius: 30px;
            padding: 10px 25px;
            border: none;
            text-transform: capitalize;
            transition: all 0.5s ease 0s;
        }
        @media only screen and (max-width: 479px){
            .form-horizontal .form-group{
                padding: 0 25px;
            }
            .form-horizontal .form-group i{
                left: 45px;
            }
            .form-horizontal .btn{
                padding: 10px 20px;
            }
        }
    </style>
</head>
<body>
    <%--<form:form action="user/login" method="post" modelAttribute="buser"  name = "loginform">--%>
        <%--<h3 class="text-center">用户登录</h3>--%>
        <%--<table>--%>
            <%--<tr>--%>
                <%--<td colspan="2"><img src="images/admin/login.gif"></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>E-Mail：</td>--%>
                <%--<td><input type="text" name="bemail" value="${buser.bemail }"  class="textSize"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>密码：</td>--%>
                <%--<td><input type="password" name="bpwd" class="textSize"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>验证码：</td>--%>
                <%--<td><input type="text" name="code" class="textSize"/></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<img id="code" src="validateCode"/>--%>
                <%--</td>--%>
                <%--<td class="ared">--%>
                    <%--<a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td colspan="2">--%>
                    <%--<input type="image" src="images/admin/ok.gif" onclick="gogo()">--%>
                    <%--<input type="image" src="images/admin/cancel.gif" onclick="cancel()">--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</table>--%>





        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <%--<form class="form-horizontal">--%>
                        <form:form action="user/login" method="post" modelAttribute="buser"  name = "loginform" class="form-horizontal">
                        <span class="heading">用户登录</span>
                        <div class="form-group">
                            <input type="text" class="form-control" id="inputEmail3" placeholder="用户名或电子邮件" name="bemail" value="${buser.bemail }" >
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="form-group help">
                            <input type="password" class="form-control" id="inputPassword3" placeholder="密　码"  name="bpwd" >
                            <i class="fa fa-lock"></i>
                            <a href="#" class="fa fa-question-circle"></a>
                        </div>
                        <div class="form-group">

                                    <tr>
                                    <td>验证码：</td>
                                    <td><input type="text" name="code" class="textSize"/></td>
                                    </tr>
                                    <tr>
                                    <td>
                                    <img id="code" src="validateCode"/>
                                    </td>
                                    <td class="ared">
                                    <a href="javascript:refreshCode();"><font color="blue">看不清，换一个！</font></a>
                                    </td>
                                    </tr>

                            </div>
                            <button type="submit" class="btn btn-default">登录</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>




    </form:form>
    ${msg }
</div>
</body>
</html>