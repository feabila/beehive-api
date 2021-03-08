<%@page import="br.com.fiap.dao.QueryDAO"%>
<%@page import="br.com.fiap.beans.verificaLogin"%>
<%
	verificaLogin log = new verificaLogin();
	QueryDAO dao = new QueryDAO();
	log.setNome(null);
	dao.desconectar();
	session.invalidate();
	response.sendRedirect("index.jsp?despedida=true");

%>