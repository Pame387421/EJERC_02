<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Servlet 3+ / JSP Starter</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary">
<main class="container d-flex min-vh-100 align-items-center justify-content-center">
    <div class="card shadow-sm" style="max-width: 560px;">
        <div class="card-body p-4 p-md-5">
            <h1 class="card-title h2">Funciona!!!!!</h1>
            <p class="card-text">
                This is the default landing page, served straight from
                <code>webapp/index.jsp</code>.
            </p>
            <p class="card-text">
                Now try the example servlet, which forwards to a JSP hidden under
                <code>/WEB-INF</code>:
            </p>
            <a class="btn btn-primary" href="<c:url value='/hello'><c:param name='name' value='Estudiante'/></c:url>">
                /hello?name=Estudiante
            </a>
        </div>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
