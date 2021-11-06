<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.6.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js">

    <link href="<%=request.getContextPath()%>/css/Login.css" rel="stylesheet" type="text/css"/>


</head>
<body>
<div class="container">
    <div class="form row">
        <form class="form-horizontal col-sm-offset col-md-offset-3" action="${pageContext.request.contextPath}/user/register">
            <h3 class="form-title">注册</h3>
            <div class="col-sm-9 col-md-9">
                <div class="form-group">
                    <!--        用户名图标和用户名输入框            -->
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <input class="form-control required" type="text" name="username" id="username" placeholder="请输入用户名" required>
                </div>

                <!--        密码图标和密码输入框                -->
                <div class="form-group">
                    <i class="fa fa-key" aria-hidden="true"></i>
                    <input class="form-control required" type="password" name="password" id="password" placeholder="请输入密码" required>
                </div>
                <!--          确认密码              -->
                <div class="form-group">
                    <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                    <input class="form-control required" type="password" name="resetpw" id="resetpw" placeholder="请确认密码" required>
                </div>
                <div class="form-group">
                </div>

                <!--注册按钮-->
                <div class="form-group">
                    <input type="submit" value="注册" class="btn btn-success pull-right">
                    <input type="button" onclick="javascript:history.back(-1)" class="btn btn-info pull-left" id="back_btn" value="返回"/>
                </div>

            </div>
        </form>
    </div>
</div>
</body>
</html>