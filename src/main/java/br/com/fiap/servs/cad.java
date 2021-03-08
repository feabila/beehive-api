package br.com.fiap.servs;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.beans.cadastroUsuario;
import br.com.fiap.dao.QueryDAO;


/**
 * Servlet implementation class cadastro
 */
@WebServlet("/cad")
public class cad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String confsenha = request.getParameter("conf_senha");
		String sexo = request.getParameter("sexo");
		String data_nasc = request.getParameter("data_nasc");
		String cel = request.getParameter("cel");
		
		cadastroUsuario cad = new cadastroUsuario();
		
		try {
			
			
				cad.setNome(nome);
				cad.setEmail(email);
				cad.setSenha(senha);
				cad.setConfsenha(confsenha);
				cad.setSexo(sexo);
				cad.setData_nasc(data_nasc);
				cad.setCel(cel);
				if(cad.Verifica()=="true") {
					try {
						QueryDAO dao = new QueryDAO();
						dao.gravar(cad);
						System.out.println("Gravado");
						response.sendRedirect(request.getContextPath() + "/login.jsp");
					} catch (Exception e) {
						// TODO: handle exception
						System.out.println(e);
						response.sendRedirect(request.getContextPath() + "/login.jsp");
					}
					
				}else {
					response.sendRedirect(request.getContextPath() + "/login.jsp");
				}
			
			
			
			
		} catch (Exception e) {
			System.out.println("err" + e);
			cadastroUsuario.setStatus("false");
			response.sendRedirect(request.getContextPath() + "/login.jsp");
		}
		
		
		
	}

}
