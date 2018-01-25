
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Candidate</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="Style/css/bootstrap.min.css" />
<link rel="stylesheet" href="Style/css/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="Style/css/font-awesome.min.css" />


<!-- page specific plugin styles -->
<link rel="stylesheet" href="Style/js/jquery-ui.custom.min.css" />
<link rel="stylesheet" href="Style/css/fullcalendar.min.css" />


<!-- text fonts -->
<link rel="stylesheet" href="Style/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="Style/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<link rel="stylesheet" href="Style/css/ace-skins.min.css" />
<link rel="stylesheet" href="Style/css/ace-rtl.min.css" />

<!-- ace settings handler -->
<script src="Style/js/ace-extra.min.js"></script>

<link rel="stylesheet " href="Style/css/template.css" type="text/css ">

<script src="Style/js/jquery-2.1.4.min.js"></script>
<script src="Style/js/bootstrap.min.js"></script>
<script src="Style/js/jquery.dataTables.min.js"></script>
<script src="Style/js/dataTables.bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$("#table").DataTable();
	});
</script>

<!-- ace scripts -->
<script src="Style/js/ace-elements.min.js"></script>
<script src="Style/js/ace.min.js"></script>
<script src="Style/js/validation.js"></script>

<!-- jquery ui -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.0/themes/smoothness/jquery-ui.css">
</head>

<body class="no-skin" style="font-size: 13px;">

	<%-- thông báo --%>
	<c:if test="${announce ne ''}">
		<script type="text/javascript">
	 	var announce = '${announce}';
		alert(announce);
	</script>
	</c:if>

	<!-- HEADER -->
	<div id="navbar"
		class="img-responsive navbar navbar-default ace-save-state">
		<img class="img-responsive" src="Style/images/background1.png"
			alt="FPT Software" />
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<div class="navbar-buttons navbar-header pull-right"
				role="navigation">
				<button style="border: 0 !important;" class="btn btn-primary">
					<span class="glyphicon glyphicon-log-out"></span> Log out
				</button>
			</div>
		</div>
	</div>

	<!-- MENU -->
	<div id="sidebar" class="sidebar responsive ace-save-state">
		<script type="text/javascript">
			try {
				ace.settings.loadState('sidebar')
			} catch (e) {
			}
		</script>

		<div class="sidebar-shortcuts" id="sidebar-shortcuts">
			<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
				<button class="btn btn-success">
					<i class="ace-icon fa fa-signal"></i>
				</button>

				<button class="btn btn-info">
					<i class="ace-icon fa fa-pencil"></i>
				</button>

				<button class="btn btn-warning">
					<i class="ace-icon fa fa-users"></i>
				</button>

				<button class="btn btn-danger">
					<i class="ace-icon fa fa-cogs"></i>
				</button>
			</div>

			<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
				<span class="btn btn-success"></span> <span class="btn btn-info"></span>

				<span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
			</div>
		</div>

		<ul class="nav nav-list">

			<li><a href="home"> <i class="menu-icon fa fa-tachometer"></i>
					<span class="menu-text">Home Admin</span>
			</a></li>

			<!-- fa-desktop: là sử dụng font-awesome để lấy các icon -->
			<li><a href="skill"> <i class="menu-icon fa fa-file-text"></i>
					<span class="menu-text">Manage Skill </span>
			</a></li>
			<li><a href="position"> <i
					class="menu-icon fa fa-line-chart"></i> <span class="menu-text">Manage
						Position </span>
			</a></li>
			<li><a href="interviewer"> <i
					class="menu-icon fa fa-users"></i> <span class="menu-text">Manage Interviewer</span>
			</a></li>
			<li  class="active"><a href="candidate"> <i
					class="menu-icon fa fa-user"></i> <span class="menu-text">Manage Candidate</span>
			</a></li>
			<li><a href="question"> <i
					class="menu-icon fa fa-folder-open-o"></i> <span class="menu-text">Manage Question</span>
			</a></li>
			<li> 
                	<a href="InterviewResult"> 
	                	<i class="menu-icon fa fa-pencil-square-o"></i> 
	                	<span class="menu-text">Manage Result</span>
					</a>			
                </li>
                <li> 
                	<a href="InterviewSchedule"> 
	                	<i class="menu-icon fa fa-calendar"></i> 
	                	<span class="menu-text">Manage Schedule</span>
					</a>			
                </li>
             <li> 
              	<a href="interview_process"> 
	               	<i class="menu-icon fa fa-hourglass-start"></i> 
	               	<span class="menu-text">Manage Process</span>
				</a>			
            </li>
             <li> 
              	<a href="user"> 
	               	<i class="menu-icon fa fa-github-alt"></i> 
	               	<span class="menu-text">Manage Users</span>
				</a>			
            </li>
		</ul>
		<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
			<i id="sidebar-toggle-icon"
				class="ace-icon fa fa-angle-double-left ace-save-state"
				data-icon1="ace-icon fa fa-angle-double-left"
				data-icon2="ace-icon fa fa-angle-double-right"></i>
		</div>
	</div>

	<!--BODY -->

		
		
		<!-- 	Huy--	Edit information trong bảng kết quả -->
		
			<div class="main-content">

				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="ace-icon fa fa-home home-icon"></i> <a
								href="home">Home</a></li>

							<li><a href="question">Manage Candidate</a></li>
						</ul>
					</div>
				</div>
			<br> <br>
				<div class="page-content">
					<div class="page-header text-center">
						<b><h1>MANAGE CANDIDATE INFORMATION</h1></b>
					</div>
					<div class="col-sm-6 col-xs-6">
						<h2>
							<c:out value="${mode}"></c:out>
							CANDIDATE
						</h2>
					</div>
					<div class="col-sm-5 col-xs-5"></div>
					<div class="col-sm-1 col-xs-1"></div>

					<br> <br> <br> <br> <br>
					<div class="col-sm-12 col-xs-12">
						<form action="save-editinformation" method="POST" style="align-items: center;">
							<p><strong>Personal Information</strong></p>
							<div class="form-group col-sm-12 col-xs-12">
									<input type="hidden" name="id" value="${candidate.id}" />
							</div>	
							<div class="form-group col-sm-6">
								<span>Full name:</span> 
								<input style="width: 230px!important;" class="form-control" type="text" name="name" 
									 value="${candidate.name}" id ="fullname" required>
							</div>
							<div class="form-group col-sm-6">
								<span>ID card:</span> 
								<input style="width: 230px!important;" type="text" class="form-control" name="idcard" 
									value="${candidate.idcard}" id="idcard">								
							</div>
							<div class="form-group col-sm-6">
								<span>Email:</span>
								<input style="width: 230px!important;" type="text" class="form-control" name="email" 
									value="${candidate.email}" id ="email" required>
							</div>
							<div class="form-group col-sm-6">
								<span>Birth of day:</span><br>  
								<input style="width: 230px!important;" type="date" name="birth"
									value="${candidate.birth}" id="birthday" required>
							</div>
	
							<div class="form-group col-sm-6">
								<span>Phone:</span>  
								<input style="width: 230px!important;" type="text" class="form-control" name="phone" 
									value="0${candidate.phone}" id="phone" required>
							</div>
							<div class="form-group col-sm-6">
								<span>Address:</span> 
								<input style="width: 230px!important;" type="text" class="form-control" name="address" 
									value="${candidate.address}" id="address">								
							</div>
							<div class="form-group col-sm-12"> 
								<input style="width: 230px!important;" type="hidden" class="form-control" name="coincidence">								
							</div>						
							<p><strong>Education</strong></p>
							<div class="form-group col-sm-6">
								<span>University:</span> 
								<input style="width: 230px!important;" class="form-control" type="text" name="university" 
									value="${candidate.university}" id ="university" required>
							</div>
							<div class="form-group col-sm-6">
								<span>Major:</span> 
								<input style="width: 230px!important;" type="text" class="form-control" name="major" 
									value="${candidate.major}" id ="major">
							</div>
							<div class="form-group col-sm-6">
								<span>Graduation year:</span> 
								<input style="width: 230px!important;" type="text" class="form-control" name="graduationyear" 
									value="${candidate.graduationyear}" id="graduationyear">
							</div>
	
							<div class="form-group col-sm-6">
								<span>GPA:</span> 
								<input style="width: 230px!important;" type="text" class="form-control" name="gpa" 
									value="${candidate.gpa}" id="gpa">
							</div>
							<p><strong>Skills</strong></p>
							<div class="form-group col-sm-12">
									<select style="width: 230px!important;" name="skill_id" id="skill">
										<c:forEach var="skill" items="${skills}">	
		                    				<c:if test="${candidate.skill_id == skill.no}">
		                    					<option selected="selected" value="${skill.no}">${skill.name}</option>
											</c:if>
											<c:if test="${candidate.skill_id != skill.no}">
		                    					<option value="${skill.no}">${skill.name}</option>
											</c:if>								
										</c:forEach>
		                    		</select>
							</div>
							<div class="form-group col-sm-6">
								<span>GST:</span> 
								<input style="width: 230px!important;" type="text" class="form-control" name="gst" 
									value="${candidate.gst}" id="gst">
							</div>
							<div class="form-group col-sm-6">
								<span>Others:</span> 
								<input style="width: 230px!important;" type="text" class="form-control" name="others" 
									value="${candidate.others}" id="others">
							</div>
							<p><strong>Apply for</strong></p>
							<div class="form-group col-sm-6">
									<span>Position:</span><br>
									<select style="width: 230px!important;" name="position_id" id="position" required>
										<c:forEach var="position" items="${positions}">	
		                    				<c:if test="${candidate.position_id == position.id}">
		                    					<option selected="selected" value="${position.id}">${position.name}</option>
											</c:if>
											<c:if test="${candidate.position_id != position.id}">
		                    					<option value="${position.id}">${position.name}</option>
											</c:if>								
										</c:forEach>
		                    		</select>
							</div>
							<div class="form-group col-sm-6">
									<span>Interviewer admin:</span><br>
									<select style="width: 230px!important;" name="intervieweradmin_id" id="intervieweradmin">
										<c:forEach var="interviewer" items="${interviewers}">	
		                    				<c:if test="${candidate.intervieweradmin_id == interviewer.id}">
		                    					<option selected="selected" value="${interviewer.id}">${interviewer.name}</option>
											</c:if>
											<c:if test="${candidate.intervieweradmin_id != interviewer.id}">
		                    					<option value="${interviewer.id}">${interviewer.name}</option>
											</c:if>								
										</c:forEach>
		                    		</select>
							</div>
							
							<div class="col-sm-6 col-xs-12">
								<button style="border: 0!important;" type="submit" class="btn btn-success btn-block">
									<span class="glyphicon glyphicon-ok"></span> Save
								</button>	
							</div>
							<div class="col-sm-6 col-xs-12">
									<button style="border: 0!important;" type="reset" class="btn btn-danger btn-block">
										<span class="glyphicon glyphicon-remove"></span> Reset
									</button>						
							</div>
						</form>
					</div>
				</div>
			</div>

	<!-- FOOTER -->
	<div class="footer">
		<div class="footer-inner">
			<div class="footer-content">
				<span class="bigger-120"> <span class="blue bolder">FPT</span>
					Application &copy; 2017-2018
				</span> &nbsp; &nbsp; <span class="action-buttons"> <a href="#">
						<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
				</a> <a href="#"> <i
						class="ace-icon fa fa-rss-square orange bigger-150"></i>
				</a>
				</span>
			</div>
		</div>
	</div>
</body>

</html>
