
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="com.everis.alicante.becajava.domain.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
	<h1>Editar Cliente</h1>
	<%
		User user = (User) request.getAttribute("client");
	%><div class="cliente">
		<form method="post" action="Client">
			<input type="hidden" name="option" value="guardarcliente">
			<input type="hidden" name="clientid" value=<%=user.getIduser()%>>
			<label>ID:</label><%=user.getIduser()%><br>
			<label>Nombre:</label>
			<input type="text" name="name" value="<%=user.getName()%>" /><br>
			<label>Apellido:</label>
			<input type="text" name="surname" value="<%=user.getSurname() %>"/><br>
			<input type="submit" value="Guardar cambios">
		</form>
	</div>
<jsp:include page="footer.jsp"></jsp:include>