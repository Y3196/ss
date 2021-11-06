
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%--BootStrap 美化界面--%>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <%--清除浮动--%>
    <div class="row clearfix">
        <%--把一个屏幕分成12份--%>
        <div class="col-md-12 column">
            <%--头部标签--%>
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
<%--表单--%>
        <form action="${pageContext.request.contextPath}/book/addBook" method="post">
            <div class="form-group">
                <label>书籍名称:</label>
<%--这里的name必须跟pojo里的实体类一致 required的作用就是如果你不把空格填满不给提交--%>
                <input type="text" name="bookName" class="form-control" required>
            </div>
            <div class="form-group">
                <label>书籍数量:</label>
                <input type="text" name="bookCounts" class="form-control" required>
            </div>
            <div class="form-group">
                <label>书籍描述:</label>
                <input type="text" name="detail" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="添加">
            </div>
        </form>
</div>
</body>
</html>
