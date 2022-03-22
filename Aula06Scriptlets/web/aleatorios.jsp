<%-- 
    Document   : soma
    Created on : 21 de mar. de 2022, 20:00:39
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String errorMessage = null;
    boolean hasParameters = request.getParameter("gerar")!=null;
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
      <title>Randoms do Karalho - JavaEE</title>
    </head>
    <body>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>Crazy Slot!</h1>
        <h2>JSP</h2>
        <h3>Inicio</h3>
        <h4>Aleatórios</h4>
        <form action="aleatorios.jsp">
            <input type="number" name="n"/>
            <input type="submit" name="gerar" value="Gerar"/>
        </form>
        <% if (errorMessage != null) { %>
                <h4 style="color: red"> <%= errorMessage %> </h4>
        <%  } else if (hasParameters) { %>
                <table>
                    <tr>
                        <th>Índice</th>
                        <th>Número</th>
                    </tr>
                    <% for(int i = 1; i <= n; i++) { %>
                    <tr>
                        <td><%= i %></td>
                        <td><%= ((int)(Math.random()*100)) %></td>
                    </tr>
                    <% } %>
                </table>                
        <%  } %>
        <hr/>
    </body>
</html>
