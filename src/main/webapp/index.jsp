<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>SSO com Keycloak SAML</title>
</head>
<body>
    <h1>Bem-vindo ao Sistema protegido por SSO SAML!</h1>
    <p>Usuário logado: <strong><%= request.getUserPrincipal() != null ? request.getUserPrincipal().getName() : "Anônimo" %></strong></p>
    <form method="post" action="saml_logout">
        <button type="submit">Logout</button>
    </form>
</body>
</html>
