<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Page Yolo</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value ='/template/admin/assets/images/favicon.png'/>">
<!-- Custom CSS -->
<link
	href="<c:url value = '/template/admin/assets/plugins/chartist/dist/chartist.min.css'/>"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value = '/template/admin/css/style.min.css'/>"
	rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper" data-layout="vertical" data-navbarbg="skin6"
		data-sidebartype="full" data-sidebar-position="absolute"
		data-header-position="absolute" data-boxed-layout="full">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar" data-navbarbg="skin6">
			<nav class="navbar top-navbar navbar-expand-md navbar-dark">
				<div class="navbar-header" data-logobg="skin6">
					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<a class="navbar-brand" href="index.html"> <!-- Logo icon --> <b
						class="logo-icon"> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <img
							src="<c:url value ='/template/admin/assets/images/logo-icon.png'/>"
							alt="homepage" class="dark-logo" />

					</b> <!--End Logo icon --> <!-- Logo text --> <span class="logo-text">
							<!-- dark Logo text --> <img
							src="<c:url value ='/template/admin/assets/images/logo-text.png'/>"
							alt="homepage" class="dark-logo" />

					</span>
					</a>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<a
						class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse collapse" id="navbarSupportedContent"
					data-navbarbg="skin5">

					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav me-auto mt-md-0 ">
						<!-- ============================================================== -->
						<!-- Search -->
						<!-- ============================================================== -->

						<li class="nav-item hidden-sm-down">
							<form class="app-search ps-3">
								<input type="text" class="form-control"
									placeholder="Search for..."> <a class="srh-btn"><i
									class="ti-search"></i></a>
							</form>
						</li>
					</ul>

					<!-- ============================================================== -->
					<!-- Right side toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav">
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle waves-effect waves-dark" href="#"
							id="navbarDropdown" role="button" data-bs-toggle="dropdown"
							aria-expanded="false"> <img
								src="<c:url value= '/template/admin/assets/images/users/1.jpg' />" alt="user"
								class="profile-pic me-2">Admin
								Đẹp zai
						</a>
							<ul class="dropdown-menu show" aria-labelledby="navbarDropdown"></ul>
						</li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar" data-sidebarbg="skin6">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav">
						<!-- User Profile-->
						
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="<c:url value = '/admin/user'/>" aria-expanded="false"><i
								class="me-3 fas fa-user-circle" aria-hidden="true"></i><span
								class="hide-menu">Quản lý người dùng</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="<c:url value = '/admin/rooms'/>" aria-expanded="false"> <i
								class="me-3 far fa-building" aria-hidden="true"></i><span
								class="hide-menu">Quản lý phòng chiếu</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="<c:url value = '/admin/show'/>" aria-expanded="false"><i
								class="me-3 far fa-calendar-alt" aria-hidden="true"></i><span
								class="hide-menu">Quản lý suất chiếu</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="<c:url value = '/admin/film'/>" aria-expanded="false"><i
								class="me-3 fas fa-film" aria-hidden="true"></i><span
								class="hide-menu">Quản lý phim</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="<c:url value = '/admin/category'/>" aria-expanded="false"><i
								class="me-3 fas fa-hashtag" aria-hidden="true"></i><span
								class="hide-menu">Quản lý loại phim</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="<c:url value = '/admin/tickets'/>" aria-expanded="false"><i
								class="me-3 fas fa-ticket-alt" aria-hidden="true"></i><span
								class="hide-menu">Quản lý vé phim</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="<c:url value = '/admin/statis'/>" aria-expanded="false"><i
								class="me-3 far fa-money-bill-alt" aria-hidden="true"></i><span
								class="hide-menu">Thống kê doanh thu</span></a></li>
						
					</ul>

				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">

			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<!-- Render từng page vào giao diện này-->
				<dec:body />


			</div>
			<!-- ============================================================== -->
			<!-- End Container fluid  -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- footer -->
			<!-- ============================================================== -->
			<footer class="footer text-center">
				Yolo Admin Nhóm 1 Fsoft <a href="#">Liên hệ anh em đi</a>
			</footer>
			<!-- ============================================================== -->
			<!-- End footer -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Page wrapper  -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script
		src="<c:url value= '/template/admin/assets/plugins/jquery/dist/jquery.min.js' />"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="<c:url value = '/template/admin/assets/plugins/bootstrap/dist/js/bootstrap.bundle.min.js'/>"></script>
	<script
		src="<c:url value = '/template/admin/js/app-style-switcher.js'/>"></script>
	<!--Wave Effects -->
	<script src="<c:url value = '/template/admin/js/waves.js'/>"></script>
	<!--Menu sidebar -->
	<script src="<c:url value = '/template/admin/js/sidebarmenu.js'/>"></script>
	<!--Custom JavaScript -->
	<script src="<c:url value = '/template/admin/js/custom.js'/>"></script>
	<!--This page JavaScript -->
	<!--flot chart-->
	<script
		src="<c:url value = '/template/admin/assets/plugins/flot/jquery.flot.js'/>"></script>
	<script
		src="<c:url value = '/template/admin/assets/plugins/flot.tooltip/js/jquery.flot.tooltip.min.js'/>"></script>
	<script
		src="<c:url value = '/template/admin/js/pages/dashboards/dashboard1.js'/>"></script>
</body>

</html>