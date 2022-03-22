<%-- 
    Document   : index
    Created on : 21 de mar. de 2022, 19:38:20
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Índice JavaEE</title>
    </head>
    <body>
        <h1>JavaEE</h1>
        <h2>JSP</h2>
        <h3>Inicio</h3>
        <h4><a href="data-hora.jsp"> Data hora </a></h4>
        <hr/>
        <h4>Soma</h4>
        <form action="soma.jsp">
            <input type="number" name="n1"/>+
            <input type="number" name="n2"/>
            <input type="submit" name="soma" value="="/>
        </form>
        <hr/>
        <h4>Aleátorio</h4>
        <form action="aleatorios.jsp">
            <input type="number" name="n"/>
            <input type="submit" name="gerar" value="Gerar"/>
        </form>
        <hr/>
        <h4>Tabuada</h4>
        <form action="tabuada.jsp">
            <input type="number" name="n" value="0"/>
            <input type="submit" value="Calcular" name="Tabuada"/>
        </form>
        <hr/>
        <h4>Calendário</h4>
        <form action="calendario.jsp">
            <input type="number" name="mes" value="03">
            <input type="number" name="ano" value="2022">
            <input type="submit" value="Gerar">
        </form>
    </body>
</html>
