<%--
  Created by IntelliJ IDEA.
  User: guillermod
  Date: 4/21/20
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Ads</title>
</head>
<body>

<h1>Showing All Ads BLAH!</h1>

<c:forEach var="ad" items="${ads}">
    <h2>${ad.title}</h2>
    <p>${ad.description}</p>
</c:forEach>

</body>
</html>