<%@ page import="com.tw.entity.Employee" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>修改职员信息</title>
  <link href="./lib/css/bootstrap.css" rel="stylesheet">
  <link href="./styles/users.css" rel="stylesheet">

  <script src="../../lib/js/jquery-1.11.1.min.js"></script>
  <script src="../../lib/js/bootstrap.min.js"></script>
  <script src="../../js/employees.js"></script>
</head>
<body>
  <div>

    <form name="new_user" method="POST" action="">
      <div>
        <div>
          <h3>修改职员信息</h3>
          <div>
            <label for="employeeName">姓名</label>
            <input type="text" id="employeeName" name="employeeName" placeholder="姓名" value="<%= ((Employee)request.getAttribute("employee")).getName()%>">
          </div>

          <div>
            <label id="role" data-value="<%= ((Employee)request.getAttribute("employee")).getRole()%>">职位</label>
            <label for="OPs">
              <input type="radio" id="OPs" name="role" value="OPs"> OPs
            </label>
            <label for="coach">
              <input type="radio" id="coach" name="role" value="Coach"> Coach
            </label>
            <label for="HR">
              <input type="radio" id="HR" name="role" value="HR"> HR
            </label>
          </div>

          <div>
            <label id="gender" data-value="<%= ((Employee)request.getAttribute("employee")).getGender()%>">性别</label>
            <label for="male">
              <input type="radio" id="male" name="gender" value=男> 男
            </label>
            <label for="female">
              <input type="radio" id="female" name="gender" value=女> 女
            </label>
          </div>

          <div>
            <label for="email">邮箱</label>
            <input type="email" id="email" name="email" placeholder="邮箱" value="<%= ((Employee)request.getAttribute("employee")).getEmail()%>">
          </div>

          <div>
            <label for="age">年龄</label>
            <input type="text" id="age" name="age" placeholder="年龄" value="<%= ((Employee)request.getAttribute("employee")).getAge()%>">
          </div>

          <div>
            <button type="submit">提交</button>
            <a type="button" href="/web/employees">返回</a>
            <button type="reset">清空</button>
          </div>
        </div>
      </div>
    </form>
  </div>
</body>
</html>
