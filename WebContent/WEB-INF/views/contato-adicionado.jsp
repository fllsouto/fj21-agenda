<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<body>
		<c:import url="/cabecalho.jsp" />
		<p>Contato ${param.nome} adicionado com sucesso</p>
		<p><a href="mvc?logica=ListaContatosLogica">Listagem de Contatos</a></p>
		<c:import url="/rodape.jsp" />
	</body>
</html>