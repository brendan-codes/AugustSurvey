<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>YAY JAVA IS THE BEST</h1>
	<p>This is survey number <c:out value="${count}"></c:out></p>
	<p>Name: <c:out value="${name}"></c:out></p>
	<p>location: <c:out value="${location}"></c:out></p>
	<p>language: <c:out value="${language}"></c:out></p>
	<p>comment: <c:out value="${comment}"></c:out></p>
	
	<a href="/">Go back!</a>
</body>
</html>