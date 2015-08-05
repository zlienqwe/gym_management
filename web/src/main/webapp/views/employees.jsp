<%@ page import="com.tw.entity.Employee" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
    <link href="./styles/users.css" rel="stylesheet">
    <link href="./lib/css/bootstrap.min.css" rel="stylesheet">
    <script src="./lib/js/jquery-1.11.1.min.js"></script>
    <script src="./lib/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="navBar.jsp" %>
<div class="container">
    <br/>
<div class="panel panel-danger">
    <div class="panel-heading">职员信息表</div>
    <div class="panel-body">
    <table class="table table-bordered table-hover table-condensed">
        <tr>
            <th>姓名</th>
            <th>身份</th>
            <th>性别</th>
            <th>邮箱</th>
            <th>年龄</th>
            <th>修改</th>
        </tr>
        <%
            List<Employee> employees = (List<Employee>)request.getAttribute("employees");
            for(int i=0; i<employees.size(); i++){
        %>
        <tr>
            <td><%= employees.get(i).getName()%></td>
            <td><%= employees.get(i).getRole()%></td>
            <td><%= employees.get(i).getGender()%></td>
            <td><%= employees.get(i).getEmail()%></td>
            <td><%= employees.get(i).getAge()%></td>
            <td>
                <a class="btn btn-primary" href="./employees/update/<%= employees.get(i).getId()%>">修改</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</div>
    <div>
        <a type="button" href="./employees/creation" class="btn btn-block btn-success">添加职员</a>
    </div>

</div>

</body>
</html>
