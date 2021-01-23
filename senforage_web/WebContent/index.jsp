<%@page import="com.senforage_ejb.entities.User"%>
<%@ include file="WEB-INF/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="static/vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="static/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">

	<c:if test="${!empty sessionScope.user }">
	<p> Vous etes ${sessionScope.user.nom }  !</p>
		<%
			//response.sendRedirect("/villages");
			request.getRequestDispatcher("/WEB-INF/dashboad.jsp");
		%>
	</c:if>
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>
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
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
          	<div >
               
                <div>
                  <h2 style="font-size: 30px"><i class="fa fa-home"></i> Sen - Forage !</h2>
                </div>
                 <br/>
                 <div class="clearfix"></div>
             </div>
            <form method="post" action="login">
              <h1>Login </h1>
              <div>
                <input type="text" class="form-control" name="email" placeholder="Username" required="required" />
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Password" required="required" />
              </div>
              <div>
                <button class="btn btn-success btn-block" type="submit">Seconnecter</button>
                <br/>
                <a class="reset_pass" href="#">Password oublié ?</a>
                <br/>
              </div>
				<br/>
              <div class="clearfix separator"></div>
				<br/>
              	<div>
                  <p>©2020 Projet JEE-Servlet-JSP-JPA. <a href="http//:github.com/moussadiene"> Moussa Diene</a> Simplon@AUF</p>
                </div>
            </form>
          </section>
        </div>

        
      </div>
    </div>
  </body>
</html>
