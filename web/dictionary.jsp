<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: dinh
  Date: 12/04/2019
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>
<%  dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("what", "cai gi");
    dic.put("apple","tao");
    dic.put("computer", "Máy tính");
    String search = request.getParameter("Eng");
    String result=dic.get(search);
    if( result!=null){
        out.println("word:"+ search+"</br>");
        out.println("result:"+ result);
    }else out.println("Not found");
%>

</body>
</html>
