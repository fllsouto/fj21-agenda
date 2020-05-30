package br.com.caelum.agenda.mvc.logica;

import java.sql.Connection;
import java.util.Calendar;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AdicionaAlteraContatoFormLogica implements Logica {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Contato contato = pegaContato(request);
		
		request.setAttribute("contato", contato);
		
		return "/WEB-INF/views/adiciona-altera-contato.jsp";
	}

	private Contato pegaContato(HttpServletRequest request) {
		Optional<String> idOpcional = Optional.ofNullable(request.getParameter("id"));
		
		
		if (idOpcional.isPresent()) {
			Connection connection = (Connection) request.getAttribute("conexao");
			ContatoDao dao = new ContatoDao(connection);
			return dao.buscaPorId(Long.parseLong(idOpcional.get()));
		} else {
			Contato contato = new Contato();
			contato.setNome("");
			contato.setEmail("");
			contato.setEndereco("");
			contato.setDataNascimento(Calendar.getInstance());
			
			return contato;
		}
	}

}
