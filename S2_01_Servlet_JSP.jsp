<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary">
<main class="container d-flex min-vh-100 align-items-center justify-content-center">
    <div class="card shadow-sm" style="max-width: 560px;">
        <div class="card-body p-4 p-md-5">
            <h1 class="card-title h2">Hello, <c:out value="${name}"/>!</h1>
            <p class="card-text">
                This page lives under <code>/WEB-INF/views</code>, so it can't be opened by typing
                its URL directly — only <code>HelloServlet</code> can reach it, via
                <code>getRequestDispatcher(...).forward(...)</code>.
            </p>
            <p class="card-text text-body-secondary">
                Server time: <c:out value="${now}"/>
            </p>
            <a class="btn btn-outline-primary" href="<c:url value='/'/>">&larr; back home</a>
        </div>
    </div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
