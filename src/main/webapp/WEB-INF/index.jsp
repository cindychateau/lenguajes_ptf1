<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Bienvenidos a Lenguajes punto com!</h1>
	<table>
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Creador</th>
				<th>Versión</th>
				<th>Acción</th>
			</tr>	
		</thead>
		<tbody>
			<c:forEach items="${lenguajes}" var="lenguaje">
				<tr>
					<td>${lenguaje.nombre}</td>
					<td>${lenguaje.creador}</td>
					<td>${lenguaje.version}</td>
					<td>
						<a href="/borrar">Borrar</a> | 
						<a href="/editar">Editar</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>