<%--
  Created by IntelliJ IDEA.
  User: guillermod
  Date: 4/21/20
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>All Ads</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h1>Showing All Ads - this is from the ads/index.jsp!</h1>--%>

<%--<c:forEach var="ad" items="${ads}">--%>
<%--    <h2>${ad.title}</h2>--%>
<%--    <p>${ad.description}</p>--%>
<%--</c:forEach>--%>

<%--</body>--%>
<%--</html>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</div>

</body>
</html>