<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bienvenida</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-body-tertiary">

<%-- Hora actual del servidor, sin scriptlets --%>
<jsp:useBean id="ahora" class="java.util.Date"/>
<fmt:formatDate value="${ahora}" pattern="H" var="hora"/>

<c:choose>
    <c:when test="${hora < 12}">
        <c:set var="saludo" value="Buenos días"/>
    </c:when>
    <c:otherwise>
        <c:set var="saludo" value="Buenas tardes"/>
    </c:otherwise>
</c:choose>

<main class="container d-flex min-vh-100 align-items-center justify-content-center">
    <div class="card shadow-sm text-center" style="max-width: 560px;">
        <div class="card-body p-4 p-md-5">
            <h1 class="card-title h2">Hola, <c:out value="${nombreUsuario}"/></h1>
            <p class="card-text lead mb-0"><c:out value="${saludo}"/></p>
        </div>
    </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
