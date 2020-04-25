<%--
  Created by IntelliJ IDEA.
  User: guillermod
  Date: 4/24/20
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Product Show Page"/>

    </jsp:include>

</head>
<body>

<%--this is where all the content for the Product Show page will go--%>
    <jsp:include page="../partials/navbar.jsp" />
    <div class="container">
    <%--    Title of our Product --%>
        <h1>Current Product: ${product.title}</h1>
<%--        Price of out product --%>
        <p>Price: $${product.priceInCents/100}</p>
<%--        description of our product --%>
        <h3>Description</h3>
        <p>${product.description}</p>
    </div>

</body>
</html>
