<%@ page import="java.util.List" %>
<%@ page import="com.tw.entity.User" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>用户信息表</title>
  <link href="./lib/css/bootstrap.css" rel="stylesheet">
  <link href="./styles/users.css" rel="stylesheet">
</head>
<body>
<%@ include file="navBar.jsp" %>
  <div class="container">
    <br />
    <div class="
    panel panel-danger">
      <div class="panel-heading">用户信息表</div>
      <div class="panel-body" >
    <table class="table table-bordered table-hover table-condensed">
      <tr>
        <th>用户名</th>
        <th>修改</th>
        <th>删除</th>
      </tr>
      <%
        List<User> users = (List<User>)request.getAttribute("users");

        for(int i=0; i<users.size(); i++){
      %>
      <tr>
        <td><%= users.get(i).getName()%></td>
        <td>
          <a class="btn btn-primary updateUser" data-id="<%= users.get(i).getId()%>">修改</a>
        </td>
        <td>
          <a type="button" class="deleteUser btn btn-danger" data-id="<%= users.get(i).getId()%>">删除</a>
        </td>
      </tr>
      <%
        }
      %>
    </table>
        </div>
      </div>

    <div>
      <a class="btn btn-block btn-success" href="./users/creation">添加用户</a>
    </div>

  </div>

<br/>

<form id="updateUserForm" name="new_user" class="form-horizontal" hidden>
   <div class="form-group">
        <label for="name" class="col-sm-4 control-label">用户名</label>
     <div class="col-sm-4">
        <input type="text" id="name" name="name" placeholder="用户名" value="" class="form-control">
      </div>
     </div>

        <input type="hidden" id="id" name="id" placeholder="id" value="">
      <div class="form-group">

        <input type="hidden" id="password" name="password" placeholder="密码" value="" class="form-control">
      </div>
    <div class="col-sm-offset-4 col-sm-4">
        <button type="submit" id="updateUser" class="btn btn-primary btn-block">确定</button>
        <button type="reset" class="btn btn-danger btn-block">重置</button>
        <a href="/web/users" class="btn btn-default btn-block">返回</a>

    </div>

</form>

<script src="./lib/js/jquery-1.11.1.min.js"></script>
<script src="./lib/js/bootstrap.min.js"></script>
<script src="./js/user.js"></script>
</body>
</html>
