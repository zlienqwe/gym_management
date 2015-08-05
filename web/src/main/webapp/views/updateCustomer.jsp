<%@ page import="com.tw.entity.Customer" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>修改顾客信息</title>
  <link href="./lib/css/bootstrap.min.css" rel="stylesheet">
  <link href="./styles/users.css" rel="stylesheet">


</head>
<body>
<div>

  <form name="update_customer" method="POST" action="" class="form-horizontal">
    <div>
      <div>
        <h3>修改顾客信息</h3>
        <div class="form-group">
          <label for="name">姓名</label>
          <input type="text" id="name" name="customerName" placeholder="姓名" value="<%= ((Customer)request.getAttribute("customer")).getName()%>">
        </div>

      </div>
    </div>
  </form>
</div>
<div class="container col-sm-offset-4 col-sm-4">
  <button type="submit" class="btn btn-block btn-primary">提交</button>
  <button type="reset" class="btn btn-block btn-danger">清空</button>
  <a type="button" href="/web/customers" class="btn btn-block btn-default">返回</a>

</div>
<script src="../../lib/js/jquery-1.11.1.min.js"></script>
<script src="../../lib/js/bootstrap.min.js"></script>

</body>
</html>
