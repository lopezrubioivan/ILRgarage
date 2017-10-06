
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>
<h1>Nuevo Cliente</h1>
<form method = "post" action="Client">
<input type="hidden" name="option" value="nuevocliente">
	<div class="form-group">
	    <label for ="name">Nombre</label>
		<input class="form-control" type="text" name="name" id="name">
	 </div>
	<div class="form-group">
		<label for ="surname">Apellidos</label>
		<input class="form-control" type="text" name="surname" id="surname">
	</div>
	<div class="form-group">
		<label for ="nif">NIF</label>
		<input class="form-control" type="text" name="nif" id="nif">
	</div>
	<input type="submit" value="Enviar" class="btn btn-primary">
</form>
<jsp:include page="footer.jsp"></jsp:include>