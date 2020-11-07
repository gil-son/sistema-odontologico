package br.edu.unicid.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConnectionFactory {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/clinicaodonto?useTimezone=true&serverTimezone=UTC";
		String usr = "root";
		String pass = "";
		
		// Retorna a conexao com MYSQL de acordo com url, usuario e sua senha
		return DriverManager.getConnection(url, usr, pass);
	}
	
	public static void close (Connection conn, PreparedStatement ps, ResultSet rs) {
		close(conn, ps);
		try {
			rs.close();
		} catch (SQLException e) {
			
		}
	}
	
	public static void close (Connection conn, PreparedStatement ps) {
		close(conn);
		try {
			ps.close();
		} catch (SQLException e) {
			
		}
	}
	
	public static void close (Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			
		}
	}
}
