package br.edu.unicid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import javax.swing.JOptionPane;

import br.edu.unicid.bean.Dentista;
import br.edu.unicid.util.ConnectionFactory;
import br.edu.unicid.util.ManipuladorDeString;

public class DentistaDAO {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ps;
	
	public int salvar(Dentista dentista) {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("INSERT INTO dentista (nome,cro,"
					+ "telefone,login,senha) VALUES (?,?,?,?,?)"); 
			 
			ps.setString(1, dentista.getNome());
			ps.setInt(2, dentista.getCro());
			ps.setString(3, ManipuladorDeString.transformarTelefone(dentista
					.getTelefone()));
			ps.setString(4, dentista.getLogin());
			ps.setString(5, dentista.getSenha());
			ps = conn.prepareStatement("INSERT INTO dentista (nome, cro, "
					+ "telefone, login, senha) VALUES (?,?,?,?,?)"); 
			ps.setString(1, dentista.getNome());
			ps.setInt(2, dentista.getCro());
			ps.setString(3, dentista.getTelefone());
			ps.setString(4, dentista.getLogin());
			ps.setString(5, dentista.getSenha());
			int ret = ps.executeUpdate();
			ConnectionFactory.close(conn, ps);
			return ret;
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			JOptionPane.showMessageDialog(null, "Erro ao salvar o dentista: " +
					e.getLocalizedMessage() , "Erro de Inclusao", 
					JOptionPane.ERROR_MESSAGE);

		}
		return 0;
	}
	
	public int remover (Dentista dentista) {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("DELETE FROM dentista WHERE id = ?");
			
			ps.setInt(1, dentista.getId());
			
			int ret = ps.executeUpdate();
			ConnectionFactory.close(conn, ps);
			return ret;
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int alterar (Dentista dentista) {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("UPDATE dentista SET nome=?, cro=?,"
					+ "telefone=?, login=?, senha=? WHERE id=?");
			
			ps.setString(1, dentista.getNome());
			ps.setInt(2, dentista.getCro());
			ps.setString(3, ManipuladorDeString.transformarTelefone(dentista
					.getTelefone()));
			ps.setString(4, dentista.getLogin());
			ps.setString(5, dentista.getSenha());
			ps.setInt(6, dentista.getId());
			
			int ret = ps.executeUpdate();
			ConnectionFactory.close(conn, ps);
			return ret;
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public List<Dentista> listarTodos() {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("SELECT * FROM dentista");
			rs = ps.executeQuery(); 
			
			List<Dentista> dentistas = new LinkedList<>();
			while (rs.next()) {
				dentistas.add(
					new Dentista(rs.getInt("id"), rs.getString("nome"),
							rs.getInt("cro"),
							rs.getString("telefone"),
							rs.getString("login"),
							rs.getString("senha")
					)
				);
			}
			ConnectionFactory.close(conn, ps, rs);
			return dentistas;
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Dentista listarUnico(Integer id) {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("SELECT * FROM dentista WHERE id = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			Dentista d = new Dentista(rs.getInt("id"), rs.getString("nome"),
					rs.getInt("cro"),
					rs.getString("telefone"),
					rs.getString("login"),
					rs.getString("senha")
			);
			ConnectionFactory.close(conn, ps, rs);
			return d;
		} catch (SQLException | ClassNotFoundException e) {
			JOptionPane.showMessageDialog(null, "Erro ao listar o dentista: " +
					e.getLocalizedMessage() , "Erro de Listagem 2", 
					JOptionPane.ERROR_MESSAGE);
		}
		
		return null;
	}
	
	public Boolean consultarLogin(String login, String senha)
	{
		try
		{
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("SELECT login, senha FROM dentista WHERE login = ? AND senha = ?");
			ps.setString(1, login);
			ps.setString(2, senha);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next() == true)
			{
				return true;
			}
			
			else
			{
				return false;
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return false;
	}
}
