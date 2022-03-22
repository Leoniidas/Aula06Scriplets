<%-- 
    Document   : soma
    Created on : 21 de mar. de 2022, 20:00:39
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String errorMessage = null;
    boolean hasParameters = request.getParameter("tabuada")!=null;
    int n=0;
    if(hasParameters){
        try{
            n = Integer.parseInt(request.getParameter("n"));
        } catch (Exception ex) {
            errorMessage = "Erro ao tentar ler parametro";
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>É o Multipicas - JavaEE</title>
    </head>
    <body>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>Golden Experience Requiem!</h1>
        <h2>JSP</h2>
        <h3>Inicio</h3>
        <h4>Tabuada</h4>
        <% if (errorMessage != null) { %>
                <h4 style="color: red"> <%= errorMessage %> </h4>
        <%  } else if (hasParameters) { %>
                <table>
                    <% for(int i = 1; i <= 10; i++) { %>
                    <tr>
                        <td><%= n %> X <%= i %> = <%= n*i %></td>
                    </tr>
                    <% } %>
                </table>                
        <%  } %>
        <hr/>
        <form action="tabuada.jsp">
            <input type="number" name="n" value="<%= n %>"/>
            <input type="submit" value="Tabuada" name="tabuada"/>
        </form>
    </body>
</html>
