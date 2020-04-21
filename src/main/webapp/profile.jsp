<%--
  Created by IntelliJ IDEA.
  User: guillermod
  Date: 4/21/20
  Time: 12:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Profile</title>
    <%@include file="partials/head.jsp" %>
</head>
<body>
<%--<%@include file="partials/head.jsp" %>--%>
<%@include file="partials/navbar.jsp" %>
<h1>Welcome, ${param.username}!</h1>

<%--<%--%>
<%--    String username = request.getParameter("username");--%>
<%--//    String password = request.getParameter("password");--%>
<%--    if (username.equals("admin")) {--%>
<%--        response.getWriter().println("<h1>Hello, " + username + "!</h1>");--%>
<%--    } else {--%>
<%--        RequestDispatcher req = request.getRequestDispatcher("login.jsp");--%>
<%--        req.include(request, response);--%>
<%--    }--%>
<%--%>--%>

</body>
</html>