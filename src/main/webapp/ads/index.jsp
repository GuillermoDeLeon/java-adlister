<%--
  Created by IntelliJ IDEA.
  User: guillermod
  Date: 4/21/20
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Lovely Ads" />
    </jsp:include>
</head>
<body>

<%-- loop through the array list of ads we're sending in as "allTheAds", and display on page --%>
<jsp:include page="/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <%-- loop through the array list of ads we're sending in as "allTheAds", and display on page --%>

    <c:forEach var="ad" items="${allTheAds}">
        <h1><c:out value="${ad.title}" /></h1>
        <p><c:out value="${ad.description}" /></p>
    </c:forEach>
</div>

</body>
</html>