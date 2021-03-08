package br.com.fiap.bo;

import br.com.fiap.beans.verificaLogin;
import br.com.fiap.dao.QueryDAO;

public class AnalisarLogin {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		

	}
	
	verificaLogin vr = new verificaLogin();
	
	public String Verificar() {
		if(vr.getEmail().equals("admin@adm.com") && vr.getSenha().equals("@admin@_")) {
			vr.setVerificador("adm");
			
		}else {
			try {
				QueryDAO dao = new QueryDAO();
				if(dao.getLogin(vr.getEmail(), vr.getSenha()) == "true") {
					vr.setVerificador("true");
				}else {
					vr.setVerificador("false");
				}
			} catch (Exception e) {
				// TODO: handle exception
				vr.setVerificador("false");
			}
		}
		
		
		return vr.getVerificador();
		
	}

}
