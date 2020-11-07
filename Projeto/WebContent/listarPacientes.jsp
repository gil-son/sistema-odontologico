<%@ page import="java.util.LinkedList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.edu.unicid.bean.Paciente"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<%
			String end = "";
			int i = 0;
			List<Paciente> pacientes = (LinkedList) request.getAttribute("pacientes");		
			for (Paciente p: pacientes) {
				end += "<tr>";
				end += "<td><a href=\"Servlet?pageId=excluirPaciente&pacienteId" + "=" + p.getId() +"\">excluir</a></td>";
				end += "<td>"+ p.getNome() + "</td>";
				end += "<td>" + p.getCpf() + "</td>";
				end += "<tr>";
				request.setAttribute("nome" + i, p.getNome());
				i++;
			}
			out.write(end);
		%>
	</table>
</body>
</html>