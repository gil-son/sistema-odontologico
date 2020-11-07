<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="br.edu.unicid.bean.OdontogramRow"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Odontograma</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="js/jquery.imagemapster.min.js"></script>
<script src="js/odontograma.js" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css" href="css/odontograma.css">
</head>

<body>

	<jsp:useBean id="table" scope="session" class="java.util.ArrayList" />

	<map name="dente_mapa" id="map">
		<area onClick="setSelectedToothField(21);" alt="" id="21" href="#"
			shape="poly"
			coords="185,35,190,36,196,37,199,39,198,45,195,51,189,56,186,59,182,55,176,51,175,48,174,36" />
		<area onClick="setSelectedToothField(22);" alt="" id="22" href="#"
			shape="poly"
			coords="212,42,219,49,216,56,207,64,202,62,197,59,200,48,203,42" />
		<area onClick="setSelectedToothField(11);" alt="" id="11" href="#"
			shape="poly"
			coords="144,42,148,51,153,57,159,57,165,55,167,47,169,43,168,35,157,33,145,35" ;/>
		<area onClick="setSelectedToothField(23);" alt="" id="23" href="#"
			shape="poly"
			coords="235,60,237,68,236,75,231,79,224,82,219,82,214,77,214,72,218,60,222,52" />
		<area onClick="setSelectedToothField(24);" alt="" id="24" href="#"
			shape="poly"
			coords="252,81,252,89,250,96,244,98,237,102,232,101,227,98,229,87,232,81,240,78" />
		<area onClick="setSelectedToothField(25);" alt="" id="25" href="#"
			shape="poly"
			coords="263,105,264,111,262,118,258,122,252,123,244,125,239,124,237,117,238,110,242,104,256,98" />
		<area onClick="setSelectedToothField(26);" alt="" id="26" href="#"
			shape="poly"
			coords="278,129,278,138,278,146,276,151,269,155,262,159,253,159,249,158,246,149,246,140,250,130,257,124,266,120" />
		<area onClick="setSelectedToothField(27);" alt="" id="27" href="#"
			shape="poly"
			coords="289,165,290,177,290,185,283,186,273,190,265,192,256,184,257,174,260,167,268,158,279,154" />
		<area onClick="setSelectedToothField(28);" alt="" id="28" href="#"
			shape="poly"
			coords="294,199,294,208,292,213,285,218,278,218,270,214,265,213,262,206,265,199,269,195,280,191,290,190" />
		<area onClick="setSelectedToothField(38);" alt="" id="38" href="#"
			shape="poly"
			coords="285,256,291,259,293,269,290,279,284,289,275,288,267,285,261,282,261,275,262,266,264,260,270,253" />
		<area onClick="setSelectedToothField(37);" alt="" id="37" href="#"
			shape="poly"
			coords="268,288,279,291,282,299,278,312,273,319,265,321,254,320,249,313,254,300,258,290" />
		<area onClick="setSelectedToothField(36);" alt="" id="36" href="#"
			shape="poly"
			coords="259,324,267,327,268,339,265,351,259,354,253,358,247,357,239,352,238,342,239,335,247,324" />
		<area onClick="setSelectedToothField(35);" alt="" id="35" href="#"
			shape="poly"
			coords="244,358,249,362,252,368,249,375,245,383,239,383,230,377,232,363" />
		<area onClick="setSelectedToothField(34);" alt="" id="34" href="#"
			shape="poly"
			coords="228,377,236,384,235,394,226,403,220,399,218,391,221,379" />
		<area onClick="setSelectedToothField(33);" alt="" id="33" href="#"
			shape="poly"
			coords="216,421,223,408,218,400,204,392,200,394,199,401,201,407,209,420" />
		<area onClick="setSelectedToothField(32);" alt="" id="32" href="#"
			shape="poly"
			coords="192,399,194,405,198,414,202,422,198,428,190,429,187,423,188,405" />
		<area onClick="setSelectedToothField(31);" alt="" id="31" href="#"
			shape="poly" coords="182,403,176,406,172,420,174,431,183,431" />
		<area onClick="setSelectedToothField(41);" alt="" id="41" href="#"
			shape="poly" coords="164,407,168,413,169,428,162,432,160,423" />
		<area onClick="setSelectedToothField(42);" alt="" id="42" href="#"
			shape="poly" coords="145,431,154,429,155,414,152,402,143,407,141,423" />
		<area onClick="setSelectedToothField(43);" alt="" id="43" href="#"
			shape="poly" coords="139,403,138,394,125,397,123,403,125,414,135,418" />
		<area onClick="setSelectedToothField(44);" alt="" id="44" href="#"
			shape="poly"
			coords="122,393,126,388,123,380,110,381,104,388,110,398,119,401" />
		<area onClick="setSelectedToothField(45);" alt="" id="45" href="#"
			shape="poly" coords="116,365,108,358,95,361,95,372,106,381" />
		<area onClick="setSelectedToothField(46);" alt="" id="46" href="#"
			shape="poly"
			coords="106,331,99,317,85,320,75,325,75,338,80,347,87,353,102,353,108,346" />
		<area onClick="setSelectedToothField(47);" alt="" id="47" href="#"
			shape="poly"
			coords="94,291,86,284,70,284,62,287,63,302,71,314,85,318,96,310" />
		<area onClick="setSelectedToothField(48);" alt="" id="48" href="#"
			shape="poly"
			coords="84,266,79,250,63,249,52,255,54,271,61,282,80,282" />
		<area onClick="setSelectedToothField(18);" alt="" id="18" href="#"
			shape="poly"
			coords="72,187,80,196,81,209,76,214,68,213,59,209,56,201,56,189" />
		<area onClick="setSelectedToothField(17);" alt="" id="17" href="#"
			shape="poly"
			coords="91,171,84,158,69,151,60,152,57,168,59,176,77,187,89,183" />
		<area onClick="setSelectedToothField(16);" alt="" id="16" href="#"
			shape="poly"
			coords="84,119,95,126,99,142,95,153,84,152,73,149,65,141,71,123" />
		<area onClick="setSelectedToothField(15);" alt="" id="15" href="#"
			shape="poly" coords="97,96,101,103,103,117,94,119,82,114,79,99" />
		<area onClick="setSelectedToothField(14);" alt="" id="14" href="#"
			shape="poly" coords="108,69,112,81,114,96,101,96,89,87,89,76" />
		<area onClick="setSelectedToothField(13);" alt="" id="13" href="#"
			shape="poly"
			coords="106,65,120,72,125,69,125,63,124,54,117,47,106,50" />
		<area onClick="setSelectedToothField(12);" alt="" id="12" href="#"
			shape="poly"
			coords="133,37,140,36,141,44,138,59,132,59,128,56,124,42" />
	</map>

	<div class="odontograma" id="od">
			<center>
				<img src="img/odontogramaAdulto.png" usemap="#dente_mapa"
					id="iimagem" />
			</center>
			<div class="formulario">
					<table border="1px" style="margin-right: 21%">
						<tr>
							<th style="width: 166px;">Dente</th>
							<th style="width: 166px;">Procedimento</th>
							<th style="width: 166px;">Preço</th>
							<th style="width: 166px;">Ações</th>
						</tr>
						<%
							ArrayList<OdontogramRow> t = table;

							if (table != null) {

								for (OdontogramRow row : t) {
						%>
						<tr>
							<td style="width: 166px;"><%=row.getTooth()%></td>
							<td style="width: 166px;"><%=row.getProcedure()%></td>
							<td style="width: 166px;"><%=row.getPrice()%></td>
							<td style="width: 166px;"><a
								href="ServletDentista?pageId=removerElementoOdontograma&index=<%=t.indexOf(row)%>">Remover</a>
							</td>
						</tr>


						<%
							}
							}
						%>

					</table>

					<input type="button" style="margin-left:35%; margin-top: 5%" value="Imprimir" onClick="window.print()" />
		</div>
	</div>
	<div id="popDiv" class="ontop">
		<form action="ServletDentista?pageId=adicionarElementoOdontograma" method="POST"
			class="form-container">
			<h1>Tratamento</h1>
			<label for="ds"><b>Dente Selecionado</b></label> <input type="text"
				name="dente" id="ids" readonly="readonly"> <label
				for="iprocedimento"><b>Procedimento</b></label> <select
				id="iprocedimento" name="procedimento" onchange="setPriceField();"
				required>
				<option value="canal">Canal</option>
				<option value="clareamento">Clareamento</option>
				<option value="cirurgia">Cirurgia</option>
				<option value="limpeza">Limpeza</option>
				<option value="nada" selected disabled></option>
			</select> <label for="preco"><b>Preço</b></label> <input type="text"
				name="preco" id="ipreco" readonly="readonly">
			<button type="submit" class="btn">Confirmar</button>
			<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
		</form>
	</div>
</body>
</html>
