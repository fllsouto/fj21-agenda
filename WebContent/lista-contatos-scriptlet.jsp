<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*,
          br.com.caelum.agenda.dao.*,
          br.com.caelum.agenda.modelo.*,
          java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
	<head>
		<style>
		
			table {
				border-collapse: collapse;
			}
	
			td, th {
				border: 1px solid black;
				padding: 8px;
			}
			
			th {
				background-color: #4CAF50;
				color: white;
				text-align: left;
				padding-top: 12px;
				padding-bottom: 12px;
			}
			
			
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data de nascimento</th>
			</tr>
			<%
				ContatoDao dao = new ContatoDao();
				List<Contato> contatos = dao.getLista();
	
				for (Contato contato : contatos) {
			%>
				<tr>
					<td><%=contato.getNome()%></td>
					<td><%=contato.getEmail()%></td>
					<td><%=contato.getEndereco()%></td>
					<td><%=new SimpleDateFormat("dd/MM/yyyy").format(contato.getDataNascimento().getTime())%></td>
				</tr>
			<%
				}
			%>
		</table>
	</body>
</html>