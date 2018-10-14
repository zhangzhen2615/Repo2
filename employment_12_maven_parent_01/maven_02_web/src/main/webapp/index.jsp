<%--
  Created by IntelliJ IDEA.
  User: xcl
  Date: 2018/10/13
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script>
        $(function () {

            $("#form_items").submit(function () {
                alert(111);
                $.post("account/testFindAll2",JSON.stringify($("#form_items").serialize()),function (dt) {
                    alert("被点击后返回结果了");
                    alert(dt);
                },"json");
                return false;
            });


        })

    </script>
</head>
<body>
<form id="form_items" method="post"  >
    姓名:<input type="text" name="name"><br/>
    价格:<input type="text" name="price"><br/>
    图片:<input type="text" name="pic"><br/>
    创建时间:<input type="text" name="createtime"><br/>
    详情:<input type="text" name="detail"><br/>
    <input type="submit" id="btn" value="提交按钮">
</form>

</body>
</html>
