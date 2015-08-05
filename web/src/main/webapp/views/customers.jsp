<%@ page import="com.tw.entity.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="com.tw.entity.Course" %>
<%@ page import="org.dom4j.io.ElementModifier" %>
<%@ page import="com.tw.entity.Employee" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>课程管理</title>
  <link href="./styles/users.css" rel="stylesheet">

  <link href="./lib/css/bootstrap.min.css" rel="stylesheet">


  <script src="./lib/js/jquery-1.11.1.min.js"></script>
  <script src="./lib/js/bootstrap.min.js"></script>

  <script src="./js/customers.js"></script>
</head>
<body>
  <%@ include file="navBar.jsp" %>

  <div class="container">
    <br/>
    <div class="panel panel-danger">
      <div class="panel-heading">顾客信息表</div>
      <div class="panel-body">
        <table class="table table-bordered table-hover table-condensed">
      <tr>
        <th>姓名</th>
        <th>修改</th>
        <th>删除</th>
      </tr>
      <%
        List<Customer> customers = (List<Customer>)request.getAttribute("customers");
        for(int i=0; i<customers.size(); i++){
      %>
      <tr>
        <td><%= customers.get(i).getName()%></td>
        <%
          String coach = "";
          List<Course> courses = customers.get(i).getCourses();
          for(int j=0; j<courses.size(); j++){
            if(courses.get(j).getName().equals("private")){
              coach = courses.get(j).getEmployee().getName();
            }
          }
        %>
        <td>
          <a class="btn btn-primary" href="./customers/update/<%= customers.get(i).getId()%>">修改</a>
        </td>
        <td>
          <a class="btn btn-danger deleteCustomer" data-id="<%= customers.get(i).getId()%>">删除</a>
        </td>
      </tr>
      <%
        }
      %>
    </table>
        </div>
      </div>
    <div>
      <a type="button" href="./customers/creation" class="btn btn-block btn-success">添加顾客</a>
    </div>
</div>
</body>
</html>
