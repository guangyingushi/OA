<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
	String path = request.getContextPath();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Morris.js Charts</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bower_components/Ionicons/css/ionicons.min.css">
<!-- Morris charts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bower_components/morris.js/morris.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/dist/css/skins/_all-skins.min.css">

<!-- 分页 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header"> <!-- Logo --> <a
			href="../../index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Admin</b>LTE</span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span> <span
			class="icon-bar"></span> <span class="icon-bar"></span> <span
			class="icon-bar"></span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 4 messages</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- start message --> <a href="#">
										<div class="pull-left">
											<img src="../../dist/img/user2-160x160.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Support Team <small><i class="fa fa-clock-o"></i> 5
												mins</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a>
								</li>
								<!-- end message -->
								<li><a href="#">
										<div class="pull-left">
											<img src="../../dist/img/user3-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											AdminLTE Design Team <small><i class="fa fa-clock-o"></i>
												2 hours</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="../../dist/img/user4-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Developers <small><i class="fa fa-clock-o"></i> Today</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="../../dist/img/user3-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Sales Department <small><i class="fa fa-clock-o"></i>
												Yesterday</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="../../dist/img/user4-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Reviewers <small><i class="fa fa-clock-o"></i> 2 days</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
							</ul>
						</li>
						<li class="footer"><a href="#">See All Messages</a></li>
					</ul></li>
				<!-- Notifications: style can be found in dropdown.less -->
				<li class="dropdown notifications-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 10 notifications</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li><a href="#"> <i class="fa fa-users text-aqua"></i>
										5 new members joined today
								</a></li>
								<li><a href="#"> <i class="fa fa-warning text-yellow"></i>
										Very long description here that may not fit into the page and
										may cause design problems
								</a></li>
								<li><a href="#"> <i class="fa fa-users text-red"></i> 5
										new members joined
								</a></li>
								<li><a href="#"> <i
										class="fa fa-shopping-cart text-green"></i> 25 sales made
								</a></li>
								<li><a href="#"> <i class="fa fa-user text-red"></i>
										You changed your username
								</a></li>
							</ul>
						</li>
						<li class="footer"><a href="#">View all</a></li>
					</ul></li>
				<!-- Tasks: style can be found in dropdown.less -->
				<li class="dropdown tasks-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-flag-o"></i> <span class="label label-danger">9</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 9 tasks</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Design some buttons <small class="pull-right">20%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-aqua"
												style="width: 20%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">20% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Create a nice theme <small class="pull-right">40%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-green"
												style="width: 40%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">40% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Some task I need to do <small class="pull-right">60%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-red" style="width: 60%"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Make beautiful transitions <small class="pull-right">80%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-yellow"
												style="width: 80%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">80% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
							</ul>
						</li>
						<li class="footer"><a href="#">View all tasks</a></li>
					</ul></li>
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="../../dist/img/user2-160x160.jpg" class="user-image"
						alt="User Image"> <span class="hidden-xs">Alexander
							Pierce</span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src="../../dist/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">

							<p>
								Alexander Pierce - Web Developer <small>Member since
									Nov. 2012</small>
							</p></li>
						<!-- Menu Body -->
						<li class="user-body">
							<div class="row">
								<div class="col-xs-4 text-center">
									<a href="#">Followers</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Sales</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Friends</a>
								</div>
							</div> <!-- /.row -->
						</li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="#" class="btn btn-default btn-flat">Profile</a>
							</div>
							<div class="pull-right">
								<a href="#" class="btn btn-default btn-flat">Sign out</a>
							</div>
						</li>
					</ul></li>
				<!-- Control Sidebar Toggle Button -->
				<li><a href="#" data-toggle="control-sidebar"><i
						class="fa fa-gears"></i></a></li>
			</ul>
		</div>
		</nav> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="../../dist/img/user2-160x160.jpg" class="img-circle"
					alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Alexander Pierce</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">MAIN NAVIGATION</li>
			<li class="treeview"><a href="#"> <i class="fa fa-dashboard"></i>
					<span>Dashboard</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="../../index.html"><i class="fa fa-circle-o"></i>
							Dashboard v1</a></li>
					<li><a href="../../index2.html"><i class="fa fa-circle-o"></i>
							Dashboard v2</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-files-o"></i>
					<span>Layout Options</span> <span class="pull-right-container">
						<span class="label label-primary pull-right">4</span>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="../layout/top-nav.html"><i
							class="fa fa-circle-o"></i> Top Navigation</a></li>
					<li><a href="../layout/boxed.html"><i
							class="fa fa-circle-o"></i> Boxed</a></li>
					<li><a href="../layout/fixed.html"><i
							class="fa fa-circle-o"></i> Fixed</a></li>
					<li><a href="../layout/collapsed-sidebar.html"><i
							class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
				</ul></li>
			<li><a href="../widgets.html"> <i class="fa fa-th"></i> <span>Widgets</span>
					<span class="pull-right-container"> <small
						class="label pull-right bg-green">new</small>
				</span>
			</a></li>
			<li class="treeview active"><a href="#"> <i
					class="fa fa-pie-chart"></i> <span>考勤管理</span> <span
					class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<!-- <li><a href="#"><i class="fa fa-circle-o"></i> 假期查询</a></li> -->
					<li class="active"><a href="charts/show.html"><i
							class="fa fa-circle-o"></i> 假期申请</a></li>
					<!-- <li><a href="flot.html"><i class="fa fa-circle-o"></i>
							假期审核</a></li> -->
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-laptop"></i>
					<span>UI Elements</span> <span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="../UI/general.html"><i class="fa fa-circle-o"></i>
							General</a></li>
					<li><a href="../UI/icons.html"><i class="fa fa-circle-o"></i>
							Icons</a></li>
					<li><a href="../UI/buttons.html"><i class="fa fa-circle-o"></i>
							Buttons</a></li>
					<li><a href="../UI/sliders.html"><i class="fa fa-circle-o"></i>
							Sliders</a></li>
					<li><a href="../UI/timeline.html"><i
							class="fa fa-circle-o"></i> Timeline</a></li>
					<li><a href="../UI/modals.html"><i class="fa fa-circle-o"></i>
							Modals</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-edit"></i>
					<span>Forms</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="../forms/general.html"><i
							class="fa fa-circle-o"></i> General Elements</a></li>
					<li><a href="../forms/advanced.html"><i
							class="fa fa-circle-o"></i> Advanced Elements</a></li>
					<li><a href="../forms/editors.html"><i
							class="fa fa-circle-o"></i> Editors</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-table"></i>
					<span>Tables</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="../tables/simple.html"><i
							class="fa fa-circle-o"></i> Simple tables</a></li>
					<li><a href="../tables/data.html"><i
							class="fa fa-circle-o"></i> Data tables</a></li>
				</ul></li>
			<li><a href="../calendar.html"> <i class="fa fa-calendar"></i>
					<span>Calendar</span> <span class="pull-right-container"> <small
						class="label pull-right bg-red">3</small> <small
						class="label pull-right bg-blue">17</small>
				</span>
			</a></li>
			<li><a href="../mailbox/mailbox.html"> <i
					class="fa fa-envelope"></i> <span>Mailbox</span> <span
					class="pull-right-container"> <small
						class="label pull-right bg-yellow">12</small> <small
						class="label pull-right bg-green">16</small> <small
						class="label pull-right bg-red">5</small>
				</span>
			</a></li>
			<li class="treeview"><a href="#"> <i class="fa fa-folder"></i>
					<span>Examples</span> <span class="pull-right-container"> <i
						class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="../examples/invoice.html"><i
							class="fa fa-circle-o"></i> Invoice</a></li>
					<li><a href="../examples/profile.html"><i
							class="fa fa-circle-o"></i> Profile</a></li>
					<li><a href="../examples/login.html"><i
							class="fa fa-circle-o"></i> Login</a></li>
					<li><a href="../examples/register.html"><i
							class="fa fa-circle-o"></i> Register</a></li>
					<li><a href="../examples/lockscreen.html"><i
							class="fa fa-circle-o"></i> Lockscreen</a></li>
					<li><a href="../examples/404.html"><i
							class="fa fa-circle-o"></i> 404 Error</a></li>
					<li><a href="../examples/500.html"><i
							class="fa fa-circle-o"></i> 500 Error</a></li>
					<li><a href="../examples/blank.html"><i
							class="fa fa-circle-o"></i> Blank Page</a></li>
					<li><a href="../examples/pace.html"><i
							class="fa fa-circle-o"></i> Pace Page</a></li>
				</ul></li>
			<li class="treeview"><a href="#"> <i class="fa fa-share"></i>
					<span>Multilevel</span> <span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
				<ul class="treeview-menu">
					<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
					<li class="treeview"><a href="#"><i class="fa fa-circle-o"></i>
							Level One <span class="pull-right-container"> <i
								class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
							<li class="treeview"><a href="#"><i
									class="fa fa-circle-o"></i> Level Two <span
									class="pull-right-container"> <i
										class="fa fa-angle-left pull-right"></i>
								</span> </a>
								<ul class="treeview-menu">
									<li><a href="#"><i class="fa fa-circle-o"></i> Level
											Three</a></li>
									<li><a href="#"><i class="fa fa-circle-o"></i> Level
											Three</a></li>
								</ul></li>
						</ul></li>
					<li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
				</ul></li>
			<li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i>
					<span>Documentation</span></a></li>
			<li class="header">LABELS</li>
			<li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
			<li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
			<li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<h2>假期申请</h2>
			<div class="cleaner"></div>
			<br /> <br /> <br />
			<div class="box box-info">
				<div class="box-header with-border">
					<h3 class="box-title">请假申请</h3>
				</div>
				<!-- /.box-header -->
				<!-- form start -->
				<form class="form-horizontal" action="morrispage.html" method="get">
					<div class="box-body">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">请假开始时间?</label>

							<div class="col-sm-10">
								<input type="text" class="form-control" id="test2"
									name="leaveStartTime" placeholder="请选择日期">
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">请假结束时间?</label>

							<div class="col-sm-10">
								<input type="text" class="form-control" id="test3"
									name="leaveEndTime" placeholder="请选择日期">
							</div>
						</div>
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">请假类型
								?</label>
							<div class="col-sm-10">
								<select id="select" class="required input_field"
									name="leaveType">
									<option value="0">---请选择---</option>
									<option value="1">事假</option>
									<option value="2">病假</option>
									<option value="3">出差</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">
								请假原因 ? </label>

							<div class="col-sm-10">

								<textarea class="form-control" id="inputPassword3"
									name="leaveContent" placeholder="请假原因"></textarea>
							</div>
						</div>

						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">请选择下一步处理人:
							</label>
							<div class="col-sm-10">
								<select id="select" class="required input_field" name="nextUser">
									<option value="0">---请选择---</option>
									<c:forEach items="${proflist }" var="proflist">
										<option value="${proflist.professionalId }">${proflist.professionalName }</option>
									</c:forEach>

								</select>
							</div>
						</div>

					</div>
					<!-- /.box-body -->
					<div class="box-footer">
						<button type="submit" class="btn btn-default">我要提交</button>
						<button type="reset" class="btn btn-info pull-right">重置</button>
					</div>
					<!-- /.box-footer -->
				</form>
			</div>
			<br /> <br /> <br />
			<form action="show.html" method="get">
				<label for="inputPassword3" class="col-sm-2 control-label">
					选择日期查询: </label> <input type="text" id="test1" placeholder="请选择日期"
					name="timename" /> <input type="submit" value="查询" />
			</form>
			<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">申请列表</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="example1" class="table table-bordered table-striped">
								<!-- 遍历循环传递数据 -->
								<!-- ============表头============= -->
								<thead>
									<tr>
										<th>编号</th>
										<th>请假人</th>
										<th>所在部门</th>
										<th>职位</th>
										<th>请假时间</th>
										<th>请假类型</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${lealist }" var="leavelist">
										<tr>
											<td>${leavelist.leave_id }</td>
											<td>${leavelist.u_name }</td>
											<td>${leavelist.d_name }</td>
											<td>${leavelist.professional_name }</td>
											<td><fmt:formatDate pattern="yyyy-MM-dd"
													value="${leavelist.leave_start_time }" type="time"/></td>

											<c:if test="${leavelist.leave_type == 1 }">
												<td>事假</td>
											</c:if>

											<c:if test="${leavelist.leave_type == 2 }">
												<td>病假</td>
											</c:if>

											<c:if test="${leavelist.leave_type == 3 }">
												<td>出差</td>
											</c:if>
											<td>${leavelist.a_state }</td>

											<td>
											<c:if test="${leavelist.a_state == '已审批' }">
										       <span>审核完成</span>
										    </c:if>
											
											<c:if test="${leavelist.a_state != '已审批' }"> 
											<a href="flotpage.html?lid=${leavelist.leave_id }"
												class="more">审核</a>&nbsp; 
											</c:if>	
											
											<a href="#" onclick="deletelid(${leavelist.leave_id })" class="more">[删除]</a></td>
												
										</tr>
									</c:forEach>
									<!-- 	<tr>
										<td>1</td>
										<td>小一</td>
										<td>人事部</td>
										<td>人事部助理</td>
										<td>2012-12-12</td>
										<td>出差</td>
										<td>已通过</td>
										<td><a href="charts/flot.html" class="more">审核</a>&nbsp;
											<a href="#" class="more">重请</a>&nbsp;<a href="#" class="more">删除</a></td>
									</tr> -->
								</tbody>
								<!-- =============表尾============= -->
								<tfoot>
									<tr>
										<th>编号</th>
										<th>请假人</th>
										<th>所在部门</th>
										<th>职位</th>
										<th>请假时间</th>
										<th>请假类型</th>
										<th>状态</th>
										<th>操作</th>
									</tr>
								</tfoot>
							</table>
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.4.0
		</div>
		<strong>Copyright &copy; 2014-2016 <a
			href="https://adminlte.io">Almsaeed Studio</a>.
		</strong> All rights reserved. </footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark"> <!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
					class="fa fa-home"></i></a></li>
			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
					class="fa fa-gears"></i></a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Home tab content -->
			<div class="tab-pane" id="control-sidebar-home-tab">
				<h3 class="control-sidebar-heading">Recent Activity</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-birthday-cake bg-red"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

								<p>Will be 23 on April 24th</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-user bg-yellow"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Frodo Updated His
									Profile</h4>

								<p>New phone +1(800)555-1234</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-envelope-o bg-light-blue"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Nora Joined Mailing
									List</h4>

								<p>nora@example.com</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-file-code-o bg-green"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Cron Job 254
									Executed</h4>

								<p>Execution time 5 seconds</p>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

				<h3 class="control-sidebar-heading">Tasks Progress</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Custom Template Design <span
									class="label label-danger pull-right">70%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Update Resume <span class="label label-success pull-right">95%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-success"
									style="width: 95%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Laravel Integration <span class="label label-warning pull-right">50%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-warning"
									style="width: 50%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Back End Framework <span class="label label-primary pull-right">68%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-primary"
									style="width: 68%"></div>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

			</div>
			<!-- /.tab-pane -->
			<!-- Stats tab content -->
			<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
				Content</div>
			<!-- /.tab-pane -->
			<!-- Settings tab content -->
			<div class="tab-pane" id="control-sidebar-settings-tab">
				<form method="post">
					<h3 class="control-sidebar-heading">General Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Report panel
							usage <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Some information about this general settings option</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Allow mail
							redirect <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Other sets of options are available</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Expose author
							name in posts <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Allow the user to show his name in blog posts</p>
					</div>
					<!-- /.form-group -->

					<h3 class="control-sidebar-heading">Chat Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Show me as
							online <input type="checkbox" class="pull-right" checked>
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Turn off
							notifications <input type="checkbox" class="pull-right">
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Delete chat
							history <a href="javascript:void(0)" class="text-red pull-right"><i
								class="fa fa-trash-o"></i></a>
						</label>
					</div>
					<!-- /.form-group -->
				</form>
			</div>
			<!-- /.tab-pane -->
		</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script
		src="${pageContext.request.contextPath}/static/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="${pageContext.request.contextPath}/static/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script
		src="${pageContext.request.contextPath}/staticv/bower_components/raphael/raphael.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bower_components/morris.js/morris.min.js"></script>
	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath}/static/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/static/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${pageContext.request.contextPath}/static/dist/js/demo.js"></script>
	<!-- page script -->
	<script src="../../static/laydate/laydate.js"></script>
	<!-- 改成你的路径 -->
	<!-- 分页 -->
	<script
		src="${pageContext.request.contextPath}/static/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<!-- 点击删除 -->
	<script>
	function deletelid(deletelid) {
		var res=confirm("删除后将无法恢复,确认要删除吗?");
		if(res == true){
		//window.location.href="flotpage.html?lid="+lid;
		window.location.href="del/leavepage.html?deletelid="+deletelid;
		}
		
	}
	</script>
	<!-- 分页插件 -->
	<script>
		$(function() {
			$('#example1').DataTable({
				"pagingType" : "simple_numbers",//设置分页控件的模式  
				searching : false,//屏蔽datatales的查询框  
				aLengthMenu : [ 5, 10 ],//设置一页展示10条记录  

				"oLanguage" : { //对表格国际化  
					"sLengthMenu" : "每页显示 _MENU_条",
					"sZeroRecords" : "没有找到符合条件的数据",
					//  "sProcessing": "&lt;img src=’./loading.gif’ /&gt;",    
					"sInfo" : "当前第 _START_ - _END_ 条　共计 _TOTAL_ 条",
					"sInfoEmpty" : "木有记录",
					"sInfoFiltered" : "(从 _MAX_ 条记录中过滤)",
					"sSearch" : "搜索：",
					"oPaginate" : {
						"sFirst" : "首页",
						"sPrevious" : "前一页",
						"sNext" : "后一页",
						"sLast" : "尾页"

					}
				},

			})
		})
	</script>
	<!-- 日期时间插件 -->
	<script>
		//执行一个laydate实例
		laydate.render({
			elem : '#test1' //指定元素
		});

		laydate.render({
			elem : '#test2' //指定元素
		});

		laydate.render({
			elem : '#test3' //指定元素
		});
	</script>

	<script>
		$(function() {
			"use strict";

			// AREA CHART
			var area = new Morris.Area({
				element : 'revenue-chart',
				resize : true,
				data : [ {
					y : '2011 Q1',
					item1 : 2666,
					item2 : 2666
				}, {
					y : '2011 Q2',
					item1 : 2778,
					item2 : 2294
				}, {
					y : '2011 Q3',
					item1 : 4912,
					item2 : 1969
				}, {
					y : '2011 Q4',
					item1 : 3767,
					item2 : 3597
				}, {
					y : '2012 Q1',
					item1 : 6810,
					item2 : 1914
				}, {
					y : '2012 Q2',
					item1 : 5670,
					item2 : 4293
				}, {
					y : '2012 Q3',
					item1 : 4820,
					item2 : 3795
				}, {
					y : '2012 Q4',
					item1 : 15073,
					item2 : 5967
				}, {
					y : '2013 Q1',
					item1 : 10687,
					item2 : 4460
				}, {
					y : '2013 Q2',
					item1 : 8432,
					item2 : 5713
				} ],
				xkey : 'y',
				ykeys : [ 'item1', 'item2' ],
				labels : [ 'Item 1', 'Item 2' ],
				lineColors : [ '#a0d0e0', '#3c8dbc' ],
				hideHover : 'auto'
			});

			// LINE CHART
			var line = new Morris.Line({
				element : 'line-chart',
				resize : true,
				data : [ {
					y : '2011 Q1',
					item1 : 2666
				}, {
					y : '2011 Q2',
					item1 : 2778
				}, {
					y : '2011 Q3',
					item1 : 4912
				}, {
					y : '2011 Q4',
					item1 : 3767
				}, {
					y : '2012 Q1',
					item1 : 6810
				}, {
					y : '2012 Q2',
					item1 : 5670
				}, {
					y : '2012 Q3',
					item1 : 4820
				}, {
					y : '2012 Q4',
					item1 : 15073
				}, {
					y : '2013 Q1',
					item1 : 10687
				}, {
					y : '2013 Q2',
					item1 : 8432
				} ],
				xkey : 'y',
				ykeys : [ 'item1' ],
				labels : [ 'Item 1' ],
				lineColors : [ '#3c8dbc' ],
				hideHover : 'auto'
			});

			//DONUT CHART
			var donut = new Morris.Donut({
				element : 'sales-chart',
				resize : true,
				colors : [ "#3c8dbc", "#f56954", "#00a65a" ],
				data : [ {
					label : "Download Sales",
					value : 12
				}, {
					label : "In-Store Sales",
					value : 30
				}, {
					label : "Mail-Order Sales",
					value : 20
				} ],
				hideHover : 'auto'
			});
			//BAR CHART
			var bar = new Morris.Bar({
				element : 'bar-chart',
				resize : true,
				data : [ {
					y : '2006',
					a : 100,
					b : 90
				}, {
					y : '2007',
					a : 75,
					b : 65
				}, {
					y : '2008',
					a : 50,
					b : 40
				}, {
					y : '2009',
					a : 75,
					b : 65
				}, {
					y : '2010',
					a : 50,
					b : 40
				}, {
					y : '2011',
					a : 75,
					b : 65
				}, {
					y : '2012',
					a : 100,
					b : 90
				} ],
				barColors : [ '#00a65a', '#f56954' ],
				xkey : 'y',
				ykeys : [ 'a', 'b' ],
				labels : [ 'CPU', 'DISK' ],
				hideHover : 'auto'
			});
		});
	</script>
</body>
</html>
