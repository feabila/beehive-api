package br.com.fiap.servs;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.fiap.beans.*;
import br.com.fiap.dao.QueryDAO;

/**
 * Servlet implementation class avaliacao
 */
@WebServlet("/avalia")
public class avalia extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public avalia() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("iduser");
		Integer perg1 = Integer.parseInt(request.getParameter("perg1"));
		String resp1 = request.getParameter("resp1");
		Integer perg2 = Integer.parseInt(request.getParameter("perg2"));
		String resp2 = request.getParameter("resp2");
		Integer estrela = Integer.parseInt(request.getParameter("star"));
		avaliacao av = new avaliacao();
		try {
			av.setId_usuario(id);
			av.setCd_resp_a(perg1);
			av.setNm_resp_a(resp1);
			av.setCd_resp_b(perg2);
			av.setNm_resp_b(resp2);
			av.setCd_estrela(estrela);
			QueryDAO dao = new QueryDAO();
			dao.gravarAvaliacao(av);
			System.out.println(id);
			System.out.println(perg1);
			System.out.println(resp1);
			System.out.println(perg2);
			System.out.println(resp2);
			System.out.println("gravado!!");
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("falha: "+ e);
		}finally {
			response.sendRedirect("index.jsp");
		}
		
		
		
	}

}
