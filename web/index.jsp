<%--
  Created by IntelliJ IDEA.
  User: dinh
  Date: 12/04/2019
  Time: 09:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="${pageContext.request.contextPath}/tran" method="post">
    <h1> Eng-Vie dictionary</h1>
    <input type="text" name="Eng" placeholder="Enter Eng word" >
    <input type="submit" value=" Translate">
  </form>
  <br>
  <form action="dictionary.jsp" method="post">
    <h1> Eng-Vie dictionary</h1>
    <input type="text" name="Eng" placeholder="Enter Eng word" >
    <input type="submit" value=" Translate">
  </form>
  </body>
</html>
