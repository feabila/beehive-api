package br.com.fiap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.fiap.beans.*;
import br.com.fiap.conexao.ConexaoFactory;

public class QueryDAO {
	private Connection conexao;
	private String status;
	private String usuarios=null;
	
	public QueryDAO() throws Exception {
		this.conexao = new ConexaoFactory().getConnection();
	}
	
	public void gravar(cadastroUsuario c) throws Exception {
		
		String sql = "INSERT INTO bh_usuario " + "(NM_USUARIO, NM_EMAIL_USUARIO, NM_SENHA_USUARIO, DT_NASC_USUARIO, NM_SEXO_USUARIO, NR_CEL_USUARIO) values (?,?,?,?,?,?)";
	PreparedStatement estrutura = conexao.prepareStatement(sql);
	estrutura.setString(1, c.getNome());
	estrutura.setString(2, c.getEmail());
	estrutura.setString(3, c.getSenha());
	estrutura.setString(4, c.getData_nasc());
	estrutura.setString(5, c.getSexo());
	estrutura.setString(6, c.getCel());
	estrutura.execute();
	estrutura.close();
	conexao.close();
	}
	
	public String getLogin(String email, String senha) throws Exception {
		
	verificaLogin log = new verificaLogin();
	PreparedStatement estrutura = this.conexao.prepareStatement("select nm_email_usuario,nm_senha_usuario,id_usuario,nm_usuario from BH_USUARIO where nm_email_usuario = ? AND nm_senha_usuario= ?");
	estrutura.setString(1, email);
	estrutura.setString(2, senha);
	ResultSet resultadoDados = estrutura.executeQuery();
	if(resultadoDados.next()) {
		status="true";
		verificaLogin.setId_usuario(resultadoDados.getString("id_usuario"));
		verificaLogin.setNome(resultadoDados.getString("nm_usuario"));
	}else {
		status="false";
	}
	resultadoDados.close();
	estrutura.close();
	conexao.close();
	return status;
	}
	
	public void gravarAvaliacao(avaliacao av) throws Exception {
		
		String sql = "INSERT INTO bh_avaliacao " + "(ID_USUARIO, CD_RESP_A, NM_RESP_A, CD_RESP_B, NM_RESP_B, CD_ESTRELA, DT_AVALIACAO) values (?,?,?,?,?,?,sysdate)";
	PreparedStatement estrutura = conexao.prepareStatement(sql);
	try {
		estrutura.setString(1, av.getId_usuario());
		estrutura.setInt(2, av.getCd_resp_a());
		estrutura.setString(3, av.getNm_resp_a());
		estrutura.setInt(4, av.getCd_resp_b());
		estrutura.setString(5, av.getNm_resp_b());
		estrutura.setInt(6, av.getCd_estrela());
		estrutura.execute();
		estrutura.close();
		conexao.close();
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println("err: " + e);
	}
	
	
	}
	
	public String getUsuarios() throws Exception{
		
		PreparedStatement estrutura = this.conexao.prepareStatement("select COUNT(id_usuario) from BH_USUARIO");
		ResultSet resultadoDados = estrutura.executeQuery();
		if(resultadoDados.next()) {
			usuarios = resultadoDados.getString("id_usuario");
			
		}
		resultadoDados.close();
		estrutura.close();
		conexao.close();
		
		return usuarios;
	}

	public void desconectar() throws Exception {
		conexao.close();
		
	}
	
	
	

}
