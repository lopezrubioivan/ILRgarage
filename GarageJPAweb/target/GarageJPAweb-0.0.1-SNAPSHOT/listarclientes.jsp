<%@page import="com.everis.alicante.becajava.domain.Client"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"></jsp:include>
	<h1>Listar Clientes</h1>
	
	<div class="container">
	<div class="row">
		<c:forEach items="${clientes}" var="cliente">
		<div class="col">
			<div class="jumbotron">
			<span class="glyphicon glyphicon-user" style="font-size: 2em"></span>
			${cliente.getIdclient()}
		     ${cliente.getName()}
		     ${cliente.getSurname()}
		     <form method="post" action="Client" style="display:inline-block">
				<input type="hidden" name="option" value="editarcliente">
				<input type="hidden" name="clientid" value="${cliente.getIdclient()}">
				<input class="btn btn-primary" type="submit" value="Editar">
			</form>
			<form method="post" action="Client" style="display:inline-block">
				<input type="hidden" name="option" value="borrarcliente">
				<input type="hidden" name="clientid" value="${cliente.getIdclient()}">
				<input class="btn btn-danger" type="submit" value="Borrar">
			</form>
		     </div>
		</div>
		</c:forEach>
	</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>