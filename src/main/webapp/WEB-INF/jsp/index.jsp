<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>

    <title>Home</title>
    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">
    <!--Bootstrap JS-->
    <script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">

    <div class="container">
        <div class="header clearfix">
            <nav>
                <ul class="nav nav-pills pull-right">
                    <li role="presentation" class="active"><a href="#">Home</a></li>
                    <li role="presentation"><a href="#">About</a></li>
                    <li role="presentation"><a href="#">Contact</a></li>
                </ul>
            </nav>
        </div>

        <div class="jumbotron">
            <form action="/" method="post">
                <form:form method="POST"
                           modelAttribute="person">
                <table>
                    <tr>
                        <td><form:label path="firstName">Name</form:label></td>
                        <td><form:input path="firstName"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="lastName">Id</form:label></td>
                        <td><form:input path="lastName"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="email">
                            Email</form:label></td>
                        <td><form:input path="email"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit"/></td>
                    </tr>
                </table>
                </form:form>
        </div>
    </div>

    <div class="jumbotron">

        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>Email</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach var="p" items="${persons}">
                <tr>
                    <td>${p.firstName}</td>
                    <td>${p.lastName}</td>
                    <td>${p.email}</td>
                </tr>

            </c:forEach>

            </tbody>
        </table>
    </div>
</div>


</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>