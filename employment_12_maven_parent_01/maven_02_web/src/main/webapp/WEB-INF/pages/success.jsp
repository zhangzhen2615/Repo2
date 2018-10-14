<%--
  Created by IntelliJ IDEA.
  User: xcl
  Date: 2018/10/11
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>查询所有页面</title>
</head>
<body>
<h3>跳转查询所有页面成功</h3>
<table border="1" width="300px">
    <tr>
        <th>编号</th>
        <th>账户名称</th>
        <th>账户金额</th>
    </tr>
    <c:forEach items="${accounts}" var="account" varStatus="vs">
    <tr>
        <th>${vs.count}</th>
        <th>${account.name}</th>
        <th>${account.money}</th>
    </tr>
    </c:forEach>
</body>
</html>