<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>首页</title>
    <style>
        *{
            padding:0;
            margin:0;
            font-family:"微软雅黑";
        }
        .header{
            height:72px;
            background:#458fce ;
        }
        .header .logo{
            color:#fff ;
            line-height:70px;
            font-size:30px;
            margin-left:20px;
            display:inline-block;
            text-align:center;

        }
        a {
            color: #fff ;
            text-decoration: none ;
        }
        .header .login{
            float:right;
            color:#fff ;
            line-height:72px;
            margin-right:2px;
            display:inline-block;
        }
        .banner{
            height:380px;
            overflow:hidden;
            background: #ddd;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="logo">简单的图书管理系统</div>
    <div class ="login">
        <a href ="${pageContext.request.contextPath}/user/goLogin">登录</a>
        <span>|</span>
        <a href ="${pageContext.request.contextPath}/user/toregister">注册</a>

    </div>
</div>
</body>
</html>