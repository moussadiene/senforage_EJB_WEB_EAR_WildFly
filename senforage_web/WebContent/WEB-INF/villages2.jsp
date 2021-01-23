<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Sen-Forage | </title>

    <!-- Bootstrap -->
        <link href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    
    <link href="static/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="static/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="static/vendors/nprogress/nprogress.css" rel="stylesheet">
<!-- iCheck -->
    <link href="static/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    
    <link href="static/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="static/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="static/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="static/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="static/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="static/build/css/custom.min.css" rel="stylesheet">
   
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col menu_fixed ">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title">
              <i class="fa fa-paw"></i> <span>Sen-Forage!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="static/images/profile.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Responsabe,</span>
                <h2>
                	<c:if test="${!empty sessionScope.user }">
						<${sessionScope.user.prenom } ${sessionScope.user.nom }!
					</c:if>
				</h2>
              </div>
              <div class="clearfix"></div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a href="dashboad"><i class="fa fa-home"></i> Home </a>
                
                  </li>
                  <li><a><i class="fa fa-clone"></i>Villages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="villages">Ajout Village</a></li>
                      <li><a href="villages">Liste villages</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Clients <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="clients">Ajout Client</a></li>
                      <li><a href="clients">Liste villages</a></li>
                    </ul>
                  </li>
                 
                </ul>
              </div>
              <div class="menu_section">
                <h3>Details</h3>
                <ul class="nav side-menu">
                             
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Revenir en arriere <span class="label label-success pull-right"></span></a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu  ">
                <div class="nav toggle">
                  <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                <nav class="nav navbar-nav ">
                <ul class=" navbar-right">
                  <li class="nav-item dropdown open" style="padding-left: 15px;">
                    <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                      <img src="static/images/profile.jpg" alt="">
                      <c:if test="${!empty sessionScope.user }">
							<${sessionScope.user.prenom } ${sessionScope.user.nom }!
						</c:if>
                    </a>
                    <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item"  href="javascript:;"> Responsable</a>
                        <a class="dropdown-item"  href="javascript:;">
                          <span class="badge bg-red pull-right">50%</span>
                          <span>Settings</span>
                        </a>
                    <a class="dropdown-item"  href="javascript:;">Help</a>
                      <a class="dropdown-item"  href="login"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                    </div>
                  </li>
  
                  <li role="presentation" class="nav-item dropdown open">
                    <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-envelope-o"></i>
                      <span class="badge bg-green">6</span>
                    </a>
                    <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="static/images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="static/images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="static/images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="static/images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <div class="text-center">
                          <a class="dropdown-item">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                          </a>
                        </div>
                      </li>
                    </ul>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Gestion Clients</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5   form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">ok!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12  ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Ajouter un nouveau client </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings 1</a>
                            <a class="dropdown-item" href="#">Settings 2</a>
                          </div>
                      </li>
                      <!-- li><a class="close-link"><i class="fa fa-close"></i></a> 
                      </li>-->
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                 
                  <div class="x_content">

                    <form class="form-horizontal form-label-left" novalidate action="villages" method="post">

                      <div class="item form-group">
                        <label class="col-form-label col-md-2 col-sm-2 label-align" for="name">Nom village <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6">
						        <input type="text" class="form-control" id="nom" placeholder="Enter le nom du village" name="nom" required="required">
                        </div>
                        <div class="col-md-2 col-sm-2">
					        <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>
                    
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
              <div class="col-md-12 col-sm-12  ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Liste des clients </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings 1</a>
                            <a class="dropdown-item" href="#">Settings 2</a>
                          </div>
                      </li>
                      <!-- li><a class="close-link"><i class="fa fa-close"></i></a> 
                      </li>-->
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                 
                  <div class="x_content">
 					<div class="row">
                    	<div class="col-sm-12">
                            <div class="card-box table-responsive">
                   
		                    <table id="datatable" class="table table-striped table-bordered" style="width:100%">
		                      <thead>	
			                    <tr>
			                    	<th>ID</th>
			                      	<th>Nom Village</th>
				                    <th width="13%">Action</th>
				                    <th width="13%">Action</th>
			                    </tr>
			                  </thead>
			                  <tfoot>
			                  
			                  </tfoot>
			                  <tbody>
			                  	<c:if test="${ !empty villages}">
				                  	<c:forEach items="${ villages }" var="village" varStatus="status">
				                  		<tr>
					                      <td><c:out value="${ status.count }" /></td>
					                      <td><c:out value="${ village.nomVillage }" /> </td>
					                    
					                     <td>
					                      	<a href="#" class="btn btn-info btn-sm">edit</a>
					                      </td>
					                       <td>
					                      	<a href="#" class="btn btn-danger btn-sm">Sup</a>
					                      </td>
				                      </tr>
									</c:forEach>
			           
			           			</c:if>
			                   
			                  </tbody>
		                    </table>
                  		</div>
	                  </div>
              		</div> 
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
         
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Sen-Forage - Moussa DIENE - Simplon@AUF <a href="https://github.com/moussadiene"> <i class="fa fa-linkin"></i> </a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="static/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="static/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="static/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="static/vendors/nprogress/nprogress.js"></script>
     <!-- validator -->
    <script src="static/vendors/validator/validator.js"></script>
    
     <script src="static/vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="static/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="static/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="static/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="static/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="static/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="static/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="static/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="static/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="static/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="static/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="static/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="static/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="static/vendors/jszip/dist/jszip.min.js"></script>
    <script src="static/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="static/vendors/pdfmake/build/vfs_fonts.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="static/build/js/custom.min.js"></script>
  </body>
</html>
