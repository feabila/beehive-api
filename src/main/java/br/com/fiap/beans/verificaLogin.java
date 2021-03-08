package br.com.fiap.beans;

import br.com.fiap.dao.QueryDAO;

public class verificaLogin {
	private static String email;
	private static String senha;
	private static String id_usuario;
	private static String nome;
	static String verificador;
	
	public static String getNome() {
		return nome;
	}
	public static void setNome(String nome) {
		verificaLogin.nome = nome;
	}
	public static String getId_usuario() {
		return id_usuario;
	}
	public static void setId_usuario(String id_usuario) {
		verificaLogin.id_usuario = id_usuario;
	}
	public String getVerificador() {
		return verificador;
	}
	public void setVerificador(String verificador) {
		verificaLogin.verificador = verificador;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		verificaLogin.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		verificaLogin.senha = senha;
	}
	
	
	
}
