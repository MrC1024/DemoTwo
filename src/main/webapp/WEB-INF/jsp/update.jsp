<%--
  Created by IntelliJ IDEA.
  User: 车盼盼
  Date: 2019/7/11
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/update" method="post" >
    <div>
        用户名称:
        <input name="userName" id="userName" value="${user.userName}">
        <input name="id" id="id" value="${user.id}" type="hidden">
       <%-- <font color="red"></font>--%>
    </div>
   <%-- <div>
        <label >用户性别：</label>
        <select name="gender" id="gender">
            <option value="1">女</option>
            <option value="2">男</option>
        </select>
        <script>
            document.getElementsByName("gender")[0].value="${user.gender}";
        </script>
    </div>--%>
    <div>
        出生日期：
        <input id="birthday" name="birthday" value="${user.birthday }">
        <font color="red"></font>
    </div>

   <%-- <div>
        <label>用户电话：</label>
        <input name="phone" id="phone" value="${user.phone }">
        <font color="red"></font>
    </div>--%>
   <%-- <div>
        <label>用户地址：</label>
        <input name="address" id="address" value="${user.address }">
    </div>--%>
    <%--<div>
        <label >用户角色：</label>
        <!-- 列出所有的角色分类 -->
        <input type="hidden" value="3" id="rid" />
        <select name="userRole" id="userRole">
            <option value="0">--请选择--</option>
            <option
                    value="1">系统管理员</option>

            <option
                    value="2">经理</option>

            <option
                    value="3">普通员工</option>
        </select>
        <script>
            document.getElementsByName("userRole")[0].value="${user.userRole}";
        </script>&ndash;%&gt;
        <font color="red"></font>
    </div>--%>
    <div class="providerAddBtn">
        <input type="submit" />
    </div>
</form>
</body>
</html>
