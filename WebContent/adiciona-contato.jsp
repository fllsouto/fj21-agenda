<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html>
<html>
<head>
<head>
	<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
	<meta charset="UTF-8">
	<title>Tela de adicionar novo contato</title>
</head>

<body>
	<c:import url="cabecalho.jsp" />

	<h1>Adiciona Contatos</h1>
    <form action="adicionaContato">
	    Nome: <input type="text" name="nome" /><br />
	    E-mail: <input type="text" name="email" /><br />
	    Endereço: <input type="text" name="endereco" /><br />
	    Data Nascimento: <caelum:campoData id="dataNascimento" /><br />

      <input type="submit" value="Gravar"/>
    </form>
	<c:import url="rodape.jsp" />
</body>
</html>