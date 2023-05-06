<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lenguajes</title>
</head>
<body>
	<h1>Editar lenguaje</h1>
	<form:form action="/${lenguaje.id}/actualizar" method="put" modelAttribute="lenguaje">
		<input type="hidden" name="_method" value="put">
		<div>
			<form:label path="nombre">Nombre del lenguaje:</form:label>
			<form:errors path="nombre" />
			<form:input path="nombre"/>
		</div>
		<div>
			<form:label path="creador">Nombre del creador:</form:label>
			<form:errors path="creador" />
			<form:input path="creador"/>
		</div>
		<div>
			<form:label path="version">Version</form:label>
			<form:errors path="version" />
			<form:input path="version" />
		</div>
		<input type="submit" value="Actualizar lenguaje"/>
	</form:form>
</body>
</html>