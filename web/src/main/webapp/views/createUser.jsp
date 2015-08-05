<%@ page import="com.tw.entity.Employee" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>添加新用户</title>

  <link href="../lib/css/bootstrap.min.css" rel="stylesheet">

  <script src="../lib/js/jquery-1.11.1.min.js"></script>
  <script src="../lib/js/bootstrap.min.js"></script>

</head>
<body>
<br/>
  <div class="container">
    <form name="new_user" method="POST" action="" class="form-horizontal">
      <div class="form-group">
            <label for="name" class="col-sm-4 control-label">姓名</label>
        <div  class="col-sm-4">
          <input type="text" id="name" name="name" placeholder="姓名" class="form-control">
        </div>
  </div>

          <div class="form-group">
            <label for="password" class="col-sm-4 control-label">密码</label>
            <div class="col-sm-4">
            <input type="password" id="password" name="password" placeholder="密码" class="form-control">
          </div>

  </div>
          <div class="form-group">
            <label class="col-sm-4 control-label">职员：</label>
            <div class="col-sm-4">
            <select name="employeeName" id="selector" class="form-control">
              <%
                List<Employee> employeeList = (List<Employee>) request.getAttribute("employees");
                for(int i=0; i<employeeList.size(); i++){
              %>
              <option id="<%= employeeList.get(i).getName()%>" value="<%= employeeList.get(i).getName()%>">
                <%= employeeList.get(i).getName()%>
              </option>
              <%
                }
              %>
            </select>
              </div>

          </div>

          <div class="form-group">
            <div class="col-sm-offset-4 col-sm-4">
            <button type="submit" class="btn btn-block btn-primary">提交</button>
            <button type="reset" class="btn btn-block btn-danger">清空</button>
              <a type="button" href="/web/users" class="btn btn-block btn-default">返回</a>
            </div>
          </div>
    </form>
  </div>
</body>
</html>
