<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
 <link
 	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Autores</title>
</head>
<body>
<form action="<c:url value="/autores"/>" method="POST">
		<div class="form-group">
			<label for="nome">Nome</label> 
			<input id="nome" class="form-control" name="nome">
		</div>
		<div class="form-group">
			<label for="email">Email</label> 
			<input id="email" class="form-control" name="email">
		</div>
		<div class="form-group">
			<label for="datanascimento">Data Nascimento</label> 
			<input id="datanascimento" class="form-control" name="datanascimento">
		</div>
		<div class="form-group">
			<label for="minicurriculo">Mini Currículo</label> 
			<input id="minicurriculo" class="form-control" name="minicurriculo">
		</div>
		
		<input type="submit" value="Gravar" class="mt-2 btn-primary">
	</form>
<h1 class="text-center">Lista de autores</h1>
	<table class="table table-hover table-striped table-bordered">
		<thead>
			<tr>
				<th>NOME</th>
				<th>EMAIL</th>
				<th>DATA NASCIMENTO</th>		
			</tr>

		</thead>
		<tbody>
			<c:forEach items="${autores}" var="t">
				<tr>
					<td>${t.nome}</td>
					<td>${t.email}</td>
					<td>${t.datanascimento}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>