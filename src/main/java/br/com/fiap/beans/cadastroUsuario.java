package br.com.fiap.beans;

import br.com.fiap.dao.QueryDAO;

public class cadastroUsuario {
	private String nome;
	private String email;
	private String senha;
	private String confsenha;
	private String data_nasc;
	private String cel;
	private String sexo;
	static String status;
	
	public String getCel() {
		return cel;
	}
	public void setCel(String cel) {
		this.cel = cel;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	

	public static String getStatus() {
		return status;
	}
	public static void setStatus(String status) {
		cadastroUsuario.status = status;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getConfsenha() {
		return confsenha;
	}
	public void setConfsenha(String confsenha) {
		this.confsenha = confsenha;
	}
	public String getData_nasc() {
		return data_nasc;
	}
	public void setData_nasc(String data_nasc) {
		this.data_nasc = data_nasc;
		
	}
	
	public String Verifica() {
		if(nome!=null && email!=null && confsenha!=null && senha!=null && sexo!=null && data_nasc!=null && cel!=null ) {
			
			status="true";
			
		}else {
			status="false";
		}
		
		if(senha.equals(confsenha)) {
			status="true";
		}else {
			System.out.println("senha diferente");
			status="senha";
		}
		return status;
	}
	
	
//	public void Gravar()throws Exception{
//		cadastroUsuario cad = null;
//		try {
//			QueryDAO dao = new QueryDAO();
//			dao.gravar(cad);
//			status = "true";
//		} catch (Exception e) {
//			// TODO: handle exception
//			status= "" + e;
//		}
//	}
	
	
	
	
}
	
