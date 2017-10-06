
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="header.jsp"></jsp:include>
<h1>Buscar Cliente</h1>
<form method = "post" action="Client" method="post">
<input type="hidden" name="option" value="buscarcliente">
	<div class="form-group">
		<label for ="id">ID</label>
		<input class="form-control"  type="text" name="id" id="id">
	</div>
	<div class="form-group">
		<label for ="nombre">Nombre</label>
		<input class="form-control"  type="text" name="nombre" id="nombre">
	</div>
	<div class="form-group">
		<label for ="surname">Apellidos</label>
		<input class="form-control"  type="text" name="surname" id="surname">
	</div>
	<div class="form-group">
		<label for ="nif">NIF</label>
		<input class="form-control"  type="text" name="nif" id="nif">
	</div>
	<input type="submit" value="Enviar" class="btn btn-primary">
</form>
<jsp:include page="footer.jsp"></jsp:include>