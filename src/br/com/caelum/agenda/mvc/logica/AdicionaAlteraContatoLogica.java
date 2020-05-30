package br.com.caelum.agenda.mvc.logica;

import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AdicionaAlteraContatoLogica implements Logica {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Optional<String> idOpcional = Optional.ofNullable(request.getParameter("id"));
		Connection connection = (Connection) request.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection);

		Contato contato = extraiPreparaContato(request);
				
		if (idOpcional.isPresent()) {
			return atualizaContato(idOpcional.get(), contato, dao);
		} else {
			return criaContato(contato, dao);
		}
	}



	private Contato extraiPreparaContato(HttpServletRequest request) throws ParseException {
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String endereco = request.getParameter("endereco");
		String dataNascimentoTexto = request.getParameter("dataNascimento");
		Calendar dataNascimento = Calendar.getInstance();
		Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataNascimentoTexto);
		dataNascimento.setTime(date);
				
		// montando um objeto contato
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setEndereco(endereco);
		contato.setDataNascimento(dataNascimento);
		return contato;
	}
	
	private String atualizaContato(String id, Contato contato, ContatoDao dao) {
		long idConvertido = Long.parseLong(id);
		contato.setId(idConvertido);
		
		dao.atualiza(contato);
		return "mvc?logica=ListaContatosLogica";
	}
	
	private String criaContato(Contato contato, ContatoDao dao) {
		dao.adiciona(contato);
		return "/WEB-INF/views/contato-adicionado.jsp";
	}
}
