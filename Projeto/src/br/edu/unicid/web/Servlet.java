package br.edu.unicid.web;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.edu.unicid.bean.Dentista;
import br.edu.unicid.bean.Endereco;
import br.edu.unicid.bean.OdontogramRow;
import br.edu.unicid.bean.Paciente;
import br.edu.unicid.dao.DentistaDAO;
import br.edu.unicid.dao.PacienteDAO;
import br.edu.unicid.util.ManipuladorDeString;

// TODO implementacao do metodo processRequest 

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<OdontogramRow> table = new ArrayList<OdontogramRow>();

	public Servlet() {
	}

	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void processRequest(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		String pageId = request.getParameter("pageId");
		RequestDispatcher rd = null;
		PacienteDAO pdao;
		DentistaDAO ddao;
		List<Paciente> pacientes;
		HttpSession session;

		switch (pageId) {
			case "removerElementoOdontograma":
				int index = Integer.parseInt(request.getParameter("index"));
				table.remove(index);
				
				session = request.getSession();
				session.setAttribute("table", table);
				RequestDispatcher rdo = request.getRequestDispatcher("odontograma.jsp");
				rd.forward(request, response);
				
				break;
				
			case "adicionarElementoOdontograma":
				String tooth = (String) request.getParameter("dente");
				String procedure = (String) request.getParameter("procedimento");
				Double price = Double.parseDouble(request.getParameter("preco"));

				table.add(new OdontogramRow(tooth, procedure, price));
				
				session = request.getSession();
				session.setAttribute("table", table);
				rd = request.getRequestDispatcher("odontograma.jsp");
				rd.forward(request, response);
				
				break;
			
			case "cadastroUsuario":
				try {
					Endereco end = new Endereco(request.getParameter("endCli"),
							request.getParameter("endNumCli"),
							request.getParameter("cepCli")
							);
					System.out.println(request.getParameter("smsConsulta"));
					boolean b;
					if (request.getParameter("smsConsulta") != null)
						b = true;
					else
						b = false;
					pdao = new PacienteDAO();
					System.out.println(pdao.salvar(new Paciente(
							request.getParameter("nomeCli"),
							request.getParameter("cpfCli"),
							request.getParameter("sexo"),
							request.getParameter("rgCli"),
							request.getParameter("estado"),	
							ManipuladorDeString.returnDateFromString(request
								.getParameter("dtaNasc")),
							request.getParameter("telefoneCli"),
							end,
							request.getParameter("cidadeCli"),
							request.getParameter("bairroCli"),
							request.getParameter("emailCli"),
							request.getParameter("login"),
							request.getParameter("senha"),
							b
					)) + " linha(s) alterada(s)");
				} catch (ParseException e) {
					e.printStackTrace();
				}
				break;
			case "cadastroDentista":
				ddao = new DentistaDAO();
				System.out.println(ddao.salvar(new Dentista(
							request.getParameter("nomeCli"),
							Integer.parseInt(request.getParameter("croDentista")),
							request.getParameter("telefoneCli"),
							request.getParameter("login"),
							request.getParameter("senha")
						)
					)
				+ " linha(s) alterada(s)");	
				break;
			case "listarPacientes":
				pdao = new PacienteDAO();
				pacientes = pdao.listarTodos();
				request.setAttribute("pacientes", pacientes);
				rd = request.getRequestDispatcher("/listarPacientes.jsp");
				rd.forward(request, response);
				break;
			case "excluirPaciente":
				pdao = new PacienteDAO();
				Paciente paciente = new Paciente();
				paciente.setId(Integer.parseInt(request.getParameter("pacienteId")));
				pdao.remover(paciente);
				pacientes = pdao.listarTodos();
				request.setAttribute("pacientes", pacientes);
				rd = request.getRequestDispatcher("/listarPacientes.jsp");
				rd.forward(request, response);
				break;
			default:
				System.out.println("eae");
				break;
		}
	}

}
