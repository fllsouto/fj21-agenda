package br.com.caelum.agenda.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/minhaServlet")
public class MinhaServlet extends HttpServlet {

	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		System.out.println("Iniciando a servlet");
	}
	
	@Override
	public void destroy() {
		super.destroy();
		System.out.println("Destruindo a servlet");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		System.out.println("Executando o service");
	}
}
