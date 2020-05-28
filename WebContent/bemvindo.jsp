<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
  <html>
    <body>
      <%-- comentário em JSP aqui: nossa primeira página JSP --%>

      <%
        String mensagem = "Bem vindo ao sistema de agenda do FJ-21!";
      %>
      <% out.println(mensagem); %>

      <br/>

      <%
        String desenvolvido = "Desenvolvido por (Fellipe Souto)";
      %>
      <%= desenvolvido %>

      <br/>

      <%
        System.out.println("Tudo foi executado!");
      %>
    </body>
  </html>