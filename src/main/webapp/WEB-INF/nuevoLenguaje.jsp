<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo lenguaje</title>
</head>
<body>
	<h1>Nuevo lenguaje</h1>
	<form:form action="/guardar" method="post" modelAttribute="lenguaje" >
		<div>
			<form:label path="nombre">Nombre del lenguaje</form:label>
			<form:errors path="nombre"/>
			<form:input path="nombre"/>
		</div>
		<div>
			<form:label path="creador">Nombre del creador</form:label>
			<form:errors path="creador"/>
			<form:input path="creador"/>
		</div>
		<div>
			<form:label path="version">Número de versión</form:label>
			<form:errors path="version"/>
			<form:input path="version" type="number"/>
		</div>
		<input type="submit" value="Guardar nuevo lenguaje"/>
	</form:form>
</body>
</html>