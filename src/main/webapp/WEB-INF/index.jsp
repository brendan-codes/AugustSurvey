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
	<h1>Welcome to the Survey, please fill out your favorites!</h1>
	<p>This is how many surveys we have filled: <c:out value="${count}"></c:out></p>
	
	<form action="/process" method="POST">
		Name: <input type="text" name="name" placeholder="Please enter your name!" /><br>
		Location: <select name="location">
			<option value="sj">San Jose</option>
			<option value="seattle">Seattle</option>
			<option value="ny">New York</option>		
		</select><br>
		Language: <select name="language">
			<option value="java">Java</option>
			<option value="python">Python</option>
			<option value="javascript">JavaScript</option>		
		</select><br>
		Comment (optional): <br>
		<textarea name="comment" placeholder="Leave a comment!"></textarea><br>
		<input type="submit" value="Leave a survey!" />
	</form>
</body>
</html>