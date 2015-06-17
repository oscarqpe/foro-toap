<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="/css/estilos.css">
	<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="/css/ace.css">
	<link rel="stylesheet" type="text/css" href="/css/font-awesome-4.3.0/css/font-awesome.min.css">
</head>	
<body>
	<div id="navbar" class="navbar navbar-default">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="#" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							Foro
						</small>
					</a>
				</div>
				<!-- /section:basics/navbar.layout.brand -->
				<!-- #section:basics/navbar.toggle -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav" style="max-height: 45px;">
						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="/nuevo-tema" title="Nuevo Tema">
								<i class="ace-icon fa fa-plus-circle"></i>
								<span class="badge badge-green">-</span>
							</a>
						</li>
					</ul>
				</div>
				<!-- /section:basics/navbar.toggle -->
				<!-- -->
				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>
		<div class="main-container">
			<div class="main-content">
				<div class="main-content-inner">
					<div class="row">
						<div class="col-sm-2">
							
						</div>
						<div class="col-sm-8">
							<div class="dd dd-draghandle">
								<ol class="dd-list">
									<c:forEach items="${temas}" var="tema">
									<li class="dd-item dd2-item" data-id="13">
										<div class="dd-handle dd2-handle">
											<i class="normal-icon ace-icon fa fa-comments blue bigger-130"></i>
											<i class="drag-icon ace-icon fa fa-arrows bigger-125"></i>
										</div>
										<div class="dd2-content"><a href="/foro?_key=${tema.id}">${tema.titulo}</a></div>
									</li>
									</c:forEach>
								</ol>
							</div>
							<hr />
						</div>
						<div class="col-sm-2">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	
<script type="text/javascript" src="/js/scripts.js"></script>
</body>
</html>
