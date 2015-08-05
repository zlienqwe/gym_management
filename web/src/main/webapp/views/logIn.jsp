
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="./lib/css/bootstrap.css" rel="stylesheet">
  <title>用户登录</title>
</head>
<body>
<br/>
<br/>
<br/>
  <div class="container">

    <form class="form-horizontal" name="log_in" method="post" action="">
        <div class="form-group">
            <label class="col-sm-4 control-label" for="name">姓名</label>
            <div class="col-sm-4">
             <input type="text" class="form-control" id="name" name="name" placeholder="姓名">
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-4 control-label" for="password">密码</label>
            <div class="col-sm-4">
            <input type="password" id="password" class="form-control" name="password" placeholder="Password">
            </div>
          </div>
      <div class="form-group">
        <div class="col-sm-offset-4 col-sm-4">
          <button class="btn btn-large btn-primary btn-block" type="submit">登录</button>
          <button class="btn btn-large btn-danger btn-block" type="reset">重置</button>
          </div>
        </div>
    </form>
  </div>
  <script src="./lib/js/jquery-1.11.1.min.js"></script>
  <script src="./lib/js/bootstrap.min.js"></script>
</body>
</html>
