<%@page import="com.everis.alicante.becajava.domain.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
	<h1>Listar Cliente</h1>
	<%
		if(request.getAttribute("mensaje")!=null){
			%><h2><%=request.getAttribute("mensaje") %></h2><%
		}
		User user = (User) request.getAttribute("client");
	%><div class="cliente">
		<c:out value="${client.name}"></c:out>
		<label>ID: </label><%=user.getIduser()%><br>
		<label>Nombre:
		</label><%=user.getName()%><br> <label>Apellido: </label><%=user.getSurname()%><br>
		<form method="post" action="Client">
			<input type="hidden" name="option" value="editarcliente">
			<input type="hidden" name="clientid" value=<%=user.getIduser()%>>
			<input type="submit" value="Editar">
		</form>
	</div>
	<%
		
	%>
	<form method="post" action="GarageJPAweb/Client"></form>
<jsp:include page="footer.jsp"></jsp:include>