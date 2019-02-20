<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/login-navbar.jsp"/>


    <div class="jumbotron jumbotron-fluid">
        <div class="img-container-adlist">
            <h4 class="display-4 d-inline mr-4 blue">Mentor Lister</h4>
            <h6 class="lead d-inline">Classified ads for Software Developers seeking Mentorship</h6>
        </div>
    </div>
    <div class="row justify-content-center">
        <%--<div class="col-12 text-center">--%>
            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active ">
                        <img class="card-img-top img-icon-card d-block logo logo-minus" src="/imgs/html-logo.png">
                    </div>
                    <div class="carousel-item  ">
                        <img class="card-img-top img-icon-card d-block logo" src="/imgs/vue-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/css-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo mt-1" src="/imgs/bootstrap-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/js-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo" src="/imgs/c-plus-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/git-hub-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo mt-3" src="/imgs/java-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/jquery-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo mt-2" src="/imgs/node-js-logo.png">
                    </div>
                </div>
            </div>

            <div class="card carousel-slide d-inline col-1" data-ride="carousel" style="width: 18rem;">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="card-img-top img-icon-card logo logo-minus" src="/imgs/react-logo.png">
                    </div>
                    <div class="carousel-item ">
                        <img class="card-img-top img-icon-card logo mt-3" src="/imgs/php-logo.png">
                    </div>
                </div>
            </div>

    </div>

    <div class="row">
        <c:forEach var="ad" items="${ads}">
            <div class="col-2">
                <div class="card d-inline" style="width: 18rem;">
                    <img class="card-img-top img-icon-card" src="/bootflat/img/check_flat/blank-image-icon.png"
                         href="/ad-details?selectedValue=${ad.getTitle()}" alt="...">
                    <div class="card-body">
                        <h5 class="card-text"><a href="/ad-details?selectedValue=${ad.getTitle()}">${ad.getTitle()}</a>
                        </h5>
                            <%--<p>${ad.getDescription()}</p>--%>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <jsp:include page="/WEB-INF/partials/foot.jsp"/>
</body>
</html>

