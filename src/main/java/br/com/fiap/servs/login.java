 package br.com.fiap.servs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.beans.verificaLogin;
import br.com.fiap.bo.AnalisarLogin;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		verificaLogin log = new verificaLogin();
		AnalisarLogin vr  = new AnalisarLogin();
		try {
			log.setEmail(email);
			log.setSenha(senha);
			
			if(vr.Verificar() == "true") {
				response.sendRedirect("login.jsp");
				log.setVerificador("true");
				System.out.println("Logado, session criada" + log.getVerificador());
			}else if(vr.Verificar() == "adm"){
				response.sendRedirect("login.jsp");
				log.setVerificador("adm");
				System.out.println("Logado, session criada" + log.getVerificador());
			}else {
				System.out.println("Email/senha incorretos!!" + log.getVerificador());
				response.sendRedirect("login.jsp");
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("err" + e);
		}
		
	}

}
