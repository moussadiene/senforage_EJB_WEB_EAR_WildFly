<%@ page language="java" contentType="text/html; charset=UTF-8"
import="com.senforage_ejb.entities.User"%>
<%@include file="taglibs.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
  <%@include file="../public/css/style.css" %>
 
</style>

</head>
<body>
	<%
		User u = (User) session.getAttribute("user");
	%>
	
<div class="login">
	<c:if test="${!empty u.nom && !empty u.prenom">
		<p> Vous etes ${ u.nom } ${u.prenom} !</p>
	</c:if>
	<span> "${resultat }" </span>
	<h1>Login</h1>
    <form method="post" action="login">
    	<input type="text" name="email" placeholder="Username" required="required" />
        <input type="password" name="password" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Se connexion.</button>
    </form>
</div>
</body>
</html>