<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="">
    <form id="userForm" name="userForm" method="post" action="${pageContext.request.contextPath }/user/toUpdate">
    <label for="oldPassword">旧密码：</label>
    <input type="password" name="oldpassword" id="oldpassword" value="">
    <font color="red"></font>
</div>
<div>
    <label for="newPassword">新密码：</label>
    <input type="password" name="newpassword" id="newpassword" value="">
    <font color="red"></font>
</div>
<div>
    <label for="password1">确认新密码：</label>
    <input type="password" name="password1" id="password1" value="">
    <font color="red"></font>
</div>

</body>
</html>
