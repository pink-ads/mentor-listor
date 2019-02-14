<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="Search Results" value="Search Results" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Here are your search results ${sessionScope.user.username}!</h1>

        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2><a href="/ad?selectedValue=${ad.title}">${ad.title}</a></h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </div>

</body>
</html>