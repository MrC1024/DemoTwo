<%--
  Created by IntelliJ IDEA.
  User: 车盼盼
  Date: 2019/7/9
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
    $(function(){
        show();
    });
    function show(){
        $.ajax({
            "url":"getAll",
            "type":"post",
            "dataType":"json",
            "success":function(result){
                $("table").html("");
                $("table").append(""+
                    "<tr class='firstTr'>"+
                    "<th width='10%'>用户编码</th>"+
                    "<th width='20%'>用户名称</th>"+
                    "<th width='10%'>性别</th>"+
                    " <th width='10%'>年龄</th>"+
                    "<th width='10%'>电话</th>"+
                    "<th width='30%'>操作</th>"+
                    "</tr>"+
                    "");
                $(result).each(function(){
                    var gender;
                    if (this.gender==1) {
                        gender="女";
                    }else if(this.gender==2){
                        gender="男";
                    }
                    $("table").append(""+
                        "<tr>"+
                        "<td>"+
                        "<span>"+this.userCode+"</span>"+
                        "</td>"+
                        "<td>"+
                        "<span>"+this.userName+"</span>"+
                        "</td>"+
                        "<td>"+
                        "<span>"+gender+"</span>"+
                        "</td>"+
                        "<td>"+
                        "<span>"+this.birthday+"</span>"+
                        "</td>"+
                        "<td>"+
                        "<span>"+this.phone+"</span>"+
                        "</td>"+
                        "<td>"+
                        "<span><a href='toUpdate/"+this.id+"'>修改</a>||</span>"+
                        "<span><a href='javascript:void(0)' onclick='return del("+this.id+")'>删除</a></span>"+
                        "</td>"+
                        "</tr>"+
                        "");
                });
                $("tr:even").css("background","blue").next().css("color","red");
            },
        });
    }
    function del(id){
        var flag=confirm("确定要删除嘛？");
        if(flag){
            $.ajax({
                "url":"del/"+id,
                "dataType":"json",
                "type":"post",
                "success":function(result){
                    if(result>0){
                        alert("删除成功");
                    }else{
                        alert("删除失败");
                    }
                    show();
                }
            });
        }
    }
</script>
<html>
<body>
<%--${haha}--%>
<%--<c:forEach items="${user}" var="lala">
    <p>${lala.userName}</p>
</c:forEach>--%>
<h1>图书信息</h1>
<h4><a href="toAdd">添加学生</a></h4>
<table  border="1" id="box"></table>
</body>
</html>
