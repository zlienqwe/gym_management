<%@ page import="com.tw.entity.User" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>添加新职员</title>
  <link href="../lib/css/bootstrap.min.css" rel="stylesheet">


  <script src="../lib/js/jquery-1.11.1.min.js"></script>
  <script src="../lib/js/bootstrap.min.js"></script>
  <script src="../js/employees.js"></script>

</head>
<body>
  <div class="container">
    <div class="col-sm-offset-4 col-lg-10">
        <h3>修改用户信息</h3><br/></div>
        <form class="form-horizontal" name="new_employee" id="new_employee">
          <div class="form-group">
            <labels for="employeeName" class="col-sm-4 control-label">姓名</labels>
            <div class="col-sm-4">
            <input type="text" id="employeeName" name="employeeName" placeholder="姓名" class="form-control"></div>
          </div>

          <div class="form-group">
            <label id="role" class="col-sm-4 control-label">职位</label>
            <label for="OPs" class="col-lg-2 col-lg-1">
              <input type="radio" id="OPs" name="role" value="OPs"> OPs
            </label>
            <label for="coach" class="col-lg-1">
              <input type="radio" id="coach" name="role" value="Coach"> Coach
            </label>
            <label for="HR" class="col-lg-1">
              <input type="radio" id="HR" name="role" value="HR"> HR
            </label>
          </div>

          <div class="form-group">
            <label id="gender" class="col-sm-4 control-label">性别</label>
            <label for="male" class="col-lg-2 col-lg-1">
              <input type="radio" id="male" name="gender" value=男> 男
            </label>
            <label for="female">
              <input type="radio" id="female" name="gender" value=女> 女
            </label>
          </div>

          <div class="form-group">
            <label for="email" class="col-sm-4 control-label">邮箱</label>
            <div class="col-sm-4">

            <input type="email" id="email" name="email" placeholder="邮箱" class="form-control">
              </div>
          </div>

          <div class="form-group">
            <label for="age" class="col-sm-4 control-label">年龄</label>
            <div class="col-sm-4">

            <input type="text" id="age" name="age" placeholder="年龄" class="form-control">
              </div>
          </div>
    <div class="form-group">
      <div class="col-sm-offset-4 col-sm-4">
      <button type="submit" class="btn btn-block btn-primary">提交</button>
      <button type="reset" class="btn btn-block btn-danger">清空</button>
      <a type="button" href="/web/employees" class="btn btn-block btn-default">返回</a>
      </div>
    </div>
    </form>

  </div>

</body>
</html>
