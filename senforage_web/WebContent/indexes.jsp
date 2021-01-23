<%@page import="com.senforage_ejb.entities.User"%>
<%@ include file="WEB-INF/taglibs.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
  <%@ include file="public/css/style.css" %>
</style>

</head>
<body>
	<%
		User u = (User) session.getAttribute("user");
			if(u!=null){
		request.getRequestDispatcher("WEB-INF/villages.jsp");
			}
	%>
	
<div class="login">
	<div>
		<c:if test="${!empty u.nom && !empty u.prenom}">
			<p> Vous etes ${ u.nom} ${u.prenom} !</p>
		</c:if>
	</div>
	<span>
		<c:if test="${!empty resultat }">
			 ${ resultat} 
		</c:if>
	</span>
	<h1>Login</h1>
    <form method="post" action="login">
    	<input type="text" name="email" placeholder="Username" required="required" />
        <input type="password" name="password" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Se connexion.</button>
    </form>
</div>
</body>
</html>