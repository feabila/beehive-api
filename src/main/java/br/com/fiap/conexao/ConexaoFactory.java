package br.com.fiap.conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoFactory {
	public Connection getConnection() throws Exception {
		String JDBC_CONNECTION_STRING = "oracle.jdbc.driver.OracleDriver";
		Class.forName(JDBC_CONNECTION_STRING);
		return DriverManager.getConnection("jdbc:oracle:thin:@oracle.fiap.com.br:1521:ORCL","rm82767","160900");
	}

}
