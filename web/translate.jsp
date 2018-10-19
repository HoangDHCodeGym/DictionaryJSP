<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/19/2018
  Time: 1:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dict = new HashMap<>();
%>
<%
    dict.put("HELLO", "Xin chào");
    dict.put("BOOK", "Sách");
    dict.put("COMPUTER", "Máy tính");
    String search = request.getParameter("textInput");
    String result = dict.get(search.toUpperCase());
    if (result != null) {
        out.println("<h1> Input: " + search + "</h1>");
        out.println("<h1> Translate: " + result + "</h1>");
    } else {
        out.println("<h1> Not found! </h1>");
    }
%>
</body>
</html>
