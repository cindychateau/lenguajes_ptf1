<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lenguajes</title>
</head>
<body>
	<h1>Detalles del lenguaje #${ lenguaje.id }</h1>
	<h2><c:out value="${lenguaje.nombre}" /></h2>
	<p>Creador: <c:out value="${ lenguaje.creador }"/> </p>
	<p>Version: <c:out value="${ lenguaje.version }"/> </p>
	
</body>
</html>