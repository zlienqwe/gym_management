
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>添加顾客</title>
  <link href="../lib/css/bootstrap.min.css" rel="stylesheet">
  <script src="../lib/js/jquery-1.11.1.min.js"></script>
  <script src="../lib/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <br />
      <form name="new_customer" method="POST" action="" class="form-horizontal">


            <div class="form-group">
              <label for="name" class="col-sm-4 control-label">姓名</label>
              <div class="col-sm-4">
              <input type="text" id="name" name="customerName"  class="form-control" placeholder="姓名">
                </div>
            </div>

            <div class="form-group">
              <div class="col-sm-offset-4 col-sm-4">
              <button type="submit" class="btn btn-block btn-primary">提交</button>
              <button type="reset" class="btn btn-block btn-danger">清空</button>
              <a type="button" href="/web/customers" class="btn btn-block btn-default">返回</a>
                </div>
            </div>
      </form>
</div>

</body>
</html>
