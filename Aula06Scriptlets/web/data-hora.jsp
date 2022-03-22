<%-- 
    Document   : data-hora
    Created on : 21 de mar. de 2022, 19:44:39
    Author     : Fatec
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Date agora = new Date(); %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Data Hora</title>
    </head>
    <body>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>ZA WARUDO!</h1>
        <h2>JSP</h2>
        <h3>Inicio</h3>
        <h4>Data Hora do servidor com scriptlets</h4>
        <%
            out.print(agora);
        %>
        <h4>Data Hora do servidor com expression</h4>
        <%= new Date() %>
    </body>
</html>
