
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍</title>
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
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <%--表单--%>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
<%--出现的问题：我们提交了修改的SQL请求，但是修改失败，初次考虑，是事务问题，配置完，依旧失败--%>
<%--看一下SQL语句能否执行成功--%>

    <input type="hidden" name="bookID" value="${QBook.bookID}">

        <div class="form-group">
            <label>书籍名称:</label>
            <%--这里的name必须跟pojo里的实体类一致 required的作用就是如果你不把空格填满不给提交--%>
            <input type="text" name="bookName" class="form-control" value="${QBook.bookName}" required>
        </div>
        <div class="form-group">
            <label>书籍数量:</label>
            <input type="text" name="bookCounts" class="form-control"value="${QBook.bookCounts}" required>
        </div>
        <div class="form-group">
            <label>书籍描述:</label>
            <input type="text" name="detail" class="form-control" value="${QBook.detail}"required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改">
        </div>
    </form>
</div>
</body>
</html>