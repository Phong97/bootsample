
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Question</title>

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
					class="menu-icon fa fa-line-chart"></i> 
					<span class="menu-text">Manage Position </span>
			</a></li>
			<li><a href="interviewer"> <i class="menu-icon fa fa-users"></i>
					<span class="menu-text">Manage Interviewer</span>
			</a></li>
			<li><a href="candidate"> <i class="menu-icon fa fa-user"></i>
					<span class="menu-text">Manage Candidate</span>
			</a></li>
			<li class="active"><a href="question"> 
			<i class="menu-icon fa fa-folder-open-o">
				</i> <span class="menu-text">Manage Question</span>
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
	<c:choose>

		<c:when test="${mode == 'LIST'}">
			<div class="main-content">

				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="ace-icon fa fa-home home-icon">
							</i> <a href="home">Home</a></li>
							<li><a href="question">Manage Question</a></li>
						</ul>
					</div>
					<div class="page-content">
						<div class="page-header text-center">
							<b><h1>MANAGE QUESTION INFORMATION</h1></b>
						</div>
						<div class="col-sm-1 col-xs-1"></div>
						<div class="col-sm-5 col-xs-5">
							<h2>QUESTION</h2>
						</div>
						<div class="col-sm-5 col-xs-5">
							<a href="new-question"><button
									style="border: 0 !important; margin-top: 12px;"
									class="addcandidate btn btn-primary btn pull-right">
									<span class="fa fa-plus-circle"> </span> Add Question
								</button></a>
						</div>
						<div class="col-sm-1 col-xs-1"></div>

						<div class="col-sm-12 col-xs-12">
							<div class="col-sm-1 col-xs-1"></div>

							<div class="table-responsive col-sm-12 col-xs-12">
								<table id="table"
									class="table table-bordered table-striped text-center">
									<thead>
										<tr style="background: skyblue">
											<th class="text-center">&emsp;&emsp;N.o</th>
											<th class="text-center">&emsp;&emsp;Position</th>
											<th class="text-center">&emsp;&emsp;Question</th>
											<th class="text-center">&emsp;&emsp;Answer</th>
											<th class="text-center" style="width: 200px">Action</th>
										</tr>
									</thead>
									<tbody id="myTable">
										<c:forEach var="question" items="${questions}">
											<tr>
												<td>${question.no}</td>
												<td>
													<c:forEach var="position" items="${positions}">
														<c:if test="${question.position_id == position.id}">
															${position.name}
														</c:if>
													</c:forEach>
												</td>
												<td>${question.question1}</td>
												<td>${question.answer}</td>
												<td><select
													style="width: 80px !important; height: 26px !important;"
													onchange="myFunction(this.value, ${question.no})">
														<option value="0">Option</option>
														<option value="1">Edit</option>
														<option id="delete" value="2">Delete</option>
												</select></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>

							<div class="col-sm-1 col-xs-1"></div>
							<!-- chọn action -->
							<script type="text/javascript">
								function myFunction(val, no) {
									if (val == 2) {
										 var dynamicDialog = $('<div id="conformBox">Are you sure to delete?</div>');
									        
									        dynamicDialog.dialog({
									                title : "Warning",
									                closeOnEscape: true,
									                modal : true,
									        
									               buttons : 
									                        [{
									                                text : "Delete",
									                                click : function() {
									                                	$(this).dialog("close");
									                                	window.location.assign('delete-question?no=' + no)
									                                }
									                        },
									                        {
									                                text : "Cancel",
									                                click : function() {
									                                        $(this).dialog("close");
									                                }
									                        }]
									        });
									} else if (val == 1) {
										window.location.assign('update-question?no=' + no)
									}
								}
							</script>
						</div>

					</div>
				</div>
			</div>
		</c:when>

		<c:when test="${mode == 'NEW'}">
			<div class="main-content">

				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="ace-icon fa fa-home home-icon"></i> <a
								href="home">Home</a></li>

							<li><a href="question">Manage Question</a></li>
						</ul>
					</div>
				</div>
			<br> <br>
				<div class="page-content">
					<div class="page-header text-center">
						<b><h1>MANAGE QUESTION INFORMATION</h1></b>
					</div>
					<div class="col-sm-6 col-xs-6">
						<h2>
							<c:out value="${mode}"></c:out>
							QUESTION
						</h2>
					</div>
					<div class="col-sm-5 col-xs-5"></div>
					<div class="col-sm-1 col-xs-1"></div>

					<br> <br> <br> <br> <br>
					<div class="col-sm-12 col-xs-12">
						<form action="save-question" method="POST" style="align-items: center;">
							<div class="form-group col-sm-12 col-xs-12">
								<input type="hidden" name="no" value="0" />
							</div>
							<div class="form-group col-sm-6 col-xs-12">
								
								<span>Position: </span> <span style="color: red;">(*)</span> 
								<select style="width: 230px!important;" name="position_id" id="position" required>
									<option>Choose Positon</option>	             
	                    			<c:forEach var="position" items="${positions}">
										<option value="${position.id}">${position.name}</option>
									</c:forEach>
	                    		</select>
							</div>						
						<div class="form-group col-sm-12 col-xs-12">
							<span>Question: </span><span style="color: red;">(*)</span>  
							<textarea class="form-control" rows="4" name="question1" required></textarea>
						</div>	
						<div class="form-group col-sm-12 col-xs-12">
							<span>Answer: </span><span style="color: red;">(*)</span>  
							<textarea class="form-control" rows="4" name="answer" required></textarea>
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
		</c:when>
		<c:when test="${mode == 'UPDATE'}">
			<div class="main-content">

				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li><i class="ace-icon fa fa-home home-icon"></i> <a
								href="home">Home</a></li>

							<li><a href="question">Manage Question</a></li>
						</ul>
					</div>
				</div>
			<br> <br>
				<div class="page-content">
					<div class="page-header text-center">
						<b><h1>MANAGE QUESTION INFORMATION</h1></b>
					</div>
					<div class="col-sm-6 col-xs-6">
						<h2>
							<c:out value="${mode}"></c:out>
							QUESTION
						</h2>
					</div>
					<div class="col-sm-5 col-xs-5"></div>
					<div class="col-sm-1 col-xs-1"></div>

					<br> <br> <br> <br> <br>
					<div class="col-sm-12 col-xs-12">
						<form action="save-question" method="POST" style="align-items: center;">
							<div class="form-group col-sm-12 col-xs-12">
								<input type="hidden" name="no" value="${question.no}" />
							</div>
							<div class="form-group col-sm-6 col-xs-12">
								<span>Position: </span>
								<select style="width: 230px!important;" name="position_id" id="position" required>	
											
	                    			<c:forEach var="position" items="${positions}">	
	                    				<c:if test="${question.position_id == position.id}">
	                    					<option selected="selected" value="${position.id}">${position.name}</option>
										</c:if>
										<c:if test="${question.position_id != position.id}">
	                    					<option value="${position.id}">${position.name}</option>
										</c:if>								
									</c:forEach>
									
	                    		</select>
						</div>						
						<div class="form-group col-sm-12 col-xs-12">
							<span>Question:</span>
							<textarea class="form-control" rows="4" name="question1" required>${question.question1}</textarea>					
						</div>
						<div class="form-group col-sm-12 col-xs-12">
							<span>Answer: </span>
							<textarea class="form-control" rows="4" name="answer" required>${question.answer}</textarea>
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
		</c:when>
	</c:choose>

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
