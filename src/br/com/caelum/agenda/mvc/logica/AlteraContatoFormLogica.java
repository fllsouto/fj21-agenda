package br.com.caelum.agenda.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AlteraContatoFormLogica implements Logica {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {

		long id = Long.parseLong(request.getParameter("id"));
		ContatoDao dao = new ContatoDao();
		Contato contato = dao.buscaPorId(id);
		
		request.setAttribute("contato", contato);
		return "/WEB-INF/views/altera-contato.jsp";
	}

}
