<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Results</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class= "container">
	<h1>Submitted Info: </h1>
	<p class="input"><b>Name:</b> <c:out value="${name}"></c:out></p>
	<p class="input"><b>Location:</b> <c:out value="${location}"></c:out></p>
	<p class="input"><b>Favorite Language:</b> <c:out value="${language}"></c:out></p>
	<p class="input"><b>Comment:</b> <c:out value="${comment}"></c:out></p>
</div>

	
</body>
</html>