package br.edu.unicid.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import javax.swing.JOptionPane;

import br.edu.unicid.bean.Endereco;
import br.edu.unicid.bean.Paciente;
import br.edu.unicid.util.ConnectionFactory;
import br.edu.unicid.util.ManipuladorDeString;

public class PacienteDAO 
{
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public int salvar(Paciente paciente) {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("INSERT INTO paciente "
					+ "(nome, cpf, sexo, rg, uf, data_nascimento, telefone, "
					+ "endereco_residencial, num_residencia, cep, cidade, "
					+ "bairro, email, login, senha, sms)"
					+ " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
			ps.setString(1, paciente.getNome());
			ps.setString(2, ManipuladorDeString.transformarCpf(paciente
					.getCpf()));
			ps.setString(3, paciente.getSexo());
			ps.setString(4, ManipuladorDeString.transformarRg(paciente
					.getRg()));
			ps.setString(5, paciente.getUf());
			ps.setDate(6, paciente.getDtNasc());
			ps.setString(7, ManipuladorDeString.transformarTelefone(paciente
					.getTelefone()));
			ps.setString(8, paciente.getEnd().getLogradouro());
			ps.setString(9, paciente.getEnd().getNumeroCasa());
			ps.setString(10, paciente.getEnd().getCep());
			ps.setString(11, paciente.getCidade());
			ps.setString(12, paciente.getBairro());
			ps.setString(13, paciente.getEmail());
			ps.setString(14, paciente.getLogin());
			ps.setString(15, paciente.getSenha());
			ps.setInt(16, paciente.getSms());
			
			int ret = ps.executeUpdate();
			ConnectionFactory.close(conn, ps);
			return ret;
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public int remover (Paciente paciente) {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("DELETE FROM paciente WHERE id = ?");
			ps.setInt(1, paciente.getId());
			int ret = ps.executeUpdate();
			ConnectionFactory.close(conn, ps);
			return ret;
		} catch (SQLException | ClassNotFoundException e) {
			JOptionPane.showMessageDialog(null, "Erro ao remover o paciente: " + 
					e.getLocalizedMessage() , "Erro de Remoção", 
					JOptionPane.ERROR_MESSAGE);
		}
		return 0;
	}
	
	public int alterar (Paciente paciente) {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("UPDATE paciente SET "
					+ "nome=?, cpf=?, sexo=?, rg=?, uf=?,"
					+ "data_nascimento=?, telefone=?, endereco_residencial=?, "
					+ "num_residencia=?, cep=?, cidade=?, bairro=?, email=?"
					+ "login=?, senha=?, sms=?");
			
			ps.setString(1, paciente.getNome());
			ps.setString(2, paciente.getCpf());
			ps.setString(3, paciente.getSexo());
			ps.setString(4, paciente.getRg());
			ps.setString(5, paciente.getUf());
			ps.setDate(6, paciente.getDtNasc());
			ps.setString(7, ManipuladorDeString.transformarTelefone(paciente
					.getTelefone()));
			ps.setString(8, paciente.getEnd().getLogradouro());
			ps.setString(9, paciente.getEnd().getNumeroCasa());
			ps.setString(10, paciente.getEnd().getCep());
			ps.setString(11, paciente.getCidade());
			ps.setString(12, paciente.getBairro());
			ps.setString(13, paciente.getEmail());
			ps.setString(14, paciente.getLogin());
			ps.setString(15, paciente.getSenha());
			ps.setInt(16, paciente.getSms());
			
			int ret = ps.executeUpdate();
			ConnectionFactory.close(conn, ps);
			return ret;
		} catch (SQLException | ClassNotFoundException e) {
			JOptionPane.showMessageDialog(null, "Erro ao alterar o paciente: " +
					e.getLocalizedMessage() , "Erro de alteração", 
					JOptionPane.ERROR_MESSAGE);
		}
		return 0;
	}
	
	public List<Paciente> listarTodos() {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("SELECT * FROM paciente");
			rs = ps.executeQuery(); 
			
			List<Paciente> pacientes = new LinkedList<>();
			// TODO completar mais tarde
			while (rs.next()) {
				Endereco end = new Endereco(
						rs.getString("endereco_residencial"), 
						rs.getString("num_residencia"), rs.getString("cep"));
				pacientes.add(
					new Paciente(
							rs.getInt("id"),
							rs.getString("nome"),
							rs.getString("cpf"),
							rs.getString("sexo"),
							rs.getString("rg"),
							rs.getString("uf"),
							rs.getDate("data_nascimento"),
							rs.getString("telefone"),
							end,
							rs.getString("cidade"),
							rs.getString("bairro"),
							rs.getString("email"),
							rs.getString("login"),
							rs.getString("senha"),
							rs.getBoolean("sms")
						)
				);
			}
			ConnectionFactory.close(conn, ps, rs);
			return pacientes;
		} catch (SQLException | ClassNotFoundException e) {
			JOptionPane.showMessageDialog(null, 
					"Erro ao listar todos os pacientes: " + 
					e.getLocalizedMessage() , "Erro de Listagem 1", 
					JOptionPane.ERROR_MESSAGE);
		}
		return null;
	}
	
	public Paciente listarUnico(Integer cpf) {
		try {
			conn = ConnectionFactory.getConnection();
			ps = conn.prepareStatement("SELECT * FROM paciente WHERE id = ?");
			ps.setInt(1, cpf);
			ResultSet rs = ps.executeQuery();
			
			Endereco end = new Endereco(rs.getString("endereco_residencial"), 
					rs.getString("num_residencia"), rs.getString("cep"));
			
			Paciente p = new Paciente(
					rs.getInt("id"),
					rs.getString("nome"),
					rs.getString("cpf"),
					rs.getString("sexo"),
					rs.getString("rg"),
					rs.getString("uf"),
					rs.getDate("data_nascimento"),
					rs.getString("telefone"),
					end,
					rs.getString("cidade"),
					rs.getString("bairro"),
					rs.getString("email"),
					rs.getString("login"),
					rs.getString("senha"),
					rs.getBoolean("sms")
				);
			ConnectionFactory.close(conn, ps, rs);
			return p;
		} catch (SQLException | ClassNotFoundException e) {
			JOptionPane.showMessageDialog(null, "Erro ao listar o paciente: " +
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
			ps = conn.prepareStatement("SELECT login, senha FROM paciente WHERE login = ? AND senha = ?");
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
