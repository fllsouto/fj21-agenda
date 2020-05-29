<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
<head>
<head>
	<link href="<c:url value="/css/jquery.css"/>" rel="stylesheet">
	<script src="<c:url value="/js/jquery.js"/>" ></script>
	<script src="<c:url value="/js/jquery-ui.js"/>" ></script>
	<meta charset="UTF-8">
	<title>Tela de edição de contato</title>
</head>

<body>
	<c:import url="/cabecalho.jsp" />

	<h1>Altera Contatos</h1>
    <form action="mvc?logica=AlteraContatoLogica" method="post">
    	<input type="hidden" name="id" value="${ contato.id }">
	    Nome: <input type="text" name="nome" value="${ contato.nome }"/><br />
	    E-mail: <input type="text" name="email" value="${ contato.email }"/><br />
	    Endereço: <input type="text" name="endereco" value="${ contato.endereco }"/><br />
	    Data Nascimento: <caelum:campoData id="dataNascimento" dataNascimento="${ contato.dataNascimento }"/><br />

      <input type="submit" value="Gravar"/>
    </form>
	<c:import url="/rodape.jsp" />
</body>
</html>