<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--     Khai báo thư viện -->
  	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Result</title>

	<meta name="description" content="overview &amp; stats" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="Style/css/bootstrap.min.css" />
	<link rel="stylesheet" href="Style/css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="Style/css/font-awesome.min.css" />
	
	
	<!-- page specific plugin styles -->
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
	<link rel="stylesheet " href="Style/css/interview_result.css" type="text/css ">

</head>
<body class="no-skin" style="font-size: 13px;">

	<!-- HEADER -->
   		<div id="navbar" class="img-responsive navbar navbar-default ace-save-state">
			<img class="img-responsive" src="Style/images/background1.png" style="height:70px;" alt="FPT Software"/>
            <div class="navbar-container ace-save-state" id="navbar-container">
                <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span> 
					<span class="icon-bar"></span>
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
                <div class="navbar-buttons navbar-header pull-right" role="navigation">
                        <button style="border: 0!important;" class="btn btn-primary"><span class="glyphicon glyphicon-log-out"></span> Log out</button>
                </div>
            </div>     
        </div>
        
	<!-- MENU -->
        <div id="sidebar" class="sidebar responsive ace-save-state">
            <script type="text/javascript">
                try {
                    ace.settings.loadState('sidebar')
                } catch (e) {}

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

               <li ><a href="home"> <i class="menu-icon fa fa-tachometer"></i>
					<span class="menu-text">Home Admin</span>
			</a></li>

			<!-- fa-desktop: là sử dụng font-awesome để lấy các icon -->
			<li><a href="skill"> <i
					class="menu-icon fa fa-file-text"></i> <span class="menu-text">Manage
						Skill </span>
			</a></li>
			<li><a href="position"> <i
					class="menu-icon fa fa-line-chart"></i> <span class="menu-text">Manage
						Position </span>
			</a></li>
			<li><a href="interviewer"> <i
					class="menu-icon fa fa-users"></i> <span class="menu-text">Manage Interviewer</span>
			</a></li>
			<li><a href="candidate"> <i
					class="menu-icon fa fa-user"></i> <span class="menu-text">Manage Candidate</span>
			</a></li>
			<li><a href="question"> <i
					class="menu-icon fa fa-folder-open-o"></i> <span class="menu-text">Manage Question</span>
			</a></li>
                <li class="active"> 
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
            </ul>
            <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
            </div>
        </div>

	<!--BODY -->
	<c:choose>

		<c:when test="${mode == 'LIST'}">
		<div class="main-content">

			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="home">Home</a>
						</li>

						<li><a href="candidate">Manage Result</a></li>
						<li class="active"> Display list interview result</li>
					</ul>
				</div>

				<div class="page-content">
					<div class="page-header">
						<h1> View and Edit Result 
							<small> 
								<i class="ace-icon fa fa-angle-double-right"></i> 
								You can view or edit result
							</small>
						</h1>
					</div>
					<div class="col-sm-6 col-xs-6">
						<h2>List interview result</h2>
					</div>
<!-- 					<div class="col-sm-6 col-xs-6"> -->
<!-- 						 <button style="border: 0!important; margin-top: 12px; float: right;" class="addcandidate btn btn-primary"> -->
<!-- 						 <span class="glyphicon glyphicon-plus-sign"> -->
<!-- 						 </span> Add Candidate</button> -->
<!-- 					</div>	 -->
					<div  class="table-responsive col-sm-12 col-xs-12">	
						<table id="table" class="table table-bordered table-striped">
						    <thead>
							    <tr style="background: skyblue">
									<th class="text-center">No</th>
									<th class="text-center">Candidate</th>
									<th class="text-center">Position</th>
									<th class="text-center">Interviewer</th>
									<th class="text-center">Start</th>
									<th class="text-center">End</th>
									<th class="text-center">Result</th>
									<th class="text-center">Action</th>
								</tr>
						    </thead>
							<tbody id="myTable">
									<c:forEach items="${results }" var="list">
									<tr>
										<td>${list.no }</td>
										<td>${list.candidate }</td>
										<td>${list.position }</td>
										<td>${list.interviewer }</td>
										<td>${list.starttime }</td>
										<td>${list.endtime }</td>
										<td>${list.result }</td>
										<td>
											<select style="width: 80px !important; height: 26px!important; "
											 onchange="myFunction(this.value, ${list.no})">
											  <option value="0">Option</option>
											  <option value="1">View</option>
											  <option value="2">Edit</option>
											</select>	
										</td>
									</tr>
									</c:forEach>
							</tbody>
						</table>
					</div>
					<script type="text/javascript">
						function myFunction(val, no) {
							if (val == 2) {
								window.location.assign('update-result?no=' + no)
							} else if (val == 1) {
								window.location.assign('view-result?no=' + no)
								
							}
						}
					</script>
				</div>
			</div>
		</div>
		</c:when>
		<c:when test="${mode == 'VIEW' }">
		<div class="main-content">
		
		<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="home">Home</a>
						</li>

						<li><a href="candidate">Manage Result</a></li>
						<li class="active"> Display list interview result</li>
					</ul>
				</div>

				<div class="page-content">
					<div class="page-header">
						<h1> View and Edit Result 
							<small> 
								<i class="ace-icon fa fa-angle-double-right"></i> 
								You can view or edit result
							</small>
						</h1>
					</div>
					<div class="col-sm-6 col-xs-6">
						<h2>
							<c:out value="${mode}"></c:out>
							RESULT
						</h2>
					</div>
					
					<div class="row">
					<div class="col-sm-7">
						<div class="tab">
						  <button class="tablinks" onclick="openCity(event, 'round1')">Round 1</button>
						  <button class="tablinks" onclick="openCity(event, 'round2')">Round 2</button>
						  <button class="tablinks" onclick="openCity(event, 'round3')">Round 3</button>
						</div>
						
						<div class="tabcontent" id="round1">
							 
							 <span>Account :</span> <span>AnhPH10</span> 
							 <span style="margin-left: 80px">Name :</span> <span>Nguyễn Quang Huy</span>
								<br><br>
							 <table id="table" class="table table-bordered table-striped">
							 	
							 	<thead>
							 		<tr>
							 			<th colspan="3">Skill </th>
							 			<th>Answer the question </th>
							 			<th>Mask </th>
							 			<th>Note </th>
							 		</tr>
							 	</thead>
							 <tbody>
							 
							 	
							 	<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
						 		<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	
							 </tbody>
							 </table>
							 
							 <span>Replay ...</span>
							 <br>
							<audio controls autoplay></audio><br>
							  <button type="button" class="  btn-success">Save</button>
							    <button type="button" class="  btn-danger">Cancel</button>
						</div>
							
						<div class="tabcontent" id="round2">
						 
							 <span>Account :</span> <span>AnhPH10</span> 
							 <span style="margin-left: 80px">Name :</span> <span>Nguyễn Quang Huy</span>
								<br><br>
							 <table id="table" class="table table-bordered table-striped">
							 	
							 	<thead>
							 		<tr>
							 			<th colspan="3">Skill </th>
							 			<th>Answer the question </th>
							 			<th>Mask </th>
							 			<th>Note </th>
							 		</tr>
							 	</thead>
							 <tbody>
							 
							 	
							 	<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge Database</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
						 		<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge UML/Patten</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	
							 </tbody>
							 </table>
						 </div>
						
						<div class="tabcontent" id="round3">
							 
							<span>Account :</span> <span>AnhPH10</span> 
							 <span style="margin-left: 80px">Name :</span> <span>Nguyễn Quang Huy</span>
								<br><br>
							 <table id="table" class="table table-bordered table-striped">
							 	
							 	<thead>
							 		<tr>
							 			<th colspan="3">Skill </th>
							 			<th>Answer the question </th>
							 			<th>Mask </th>
							 			<th>Note </th>
							 		</tr>
							 	</thead>
							 <tbody>
							 
							 	
							 	<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge OOP</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
						 		<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	
							 </tbody>
							 </table>
						</div>
					</div>
					<div class="col-sm-5">
						
						<p><strong>Information Candidate</strong></p>
						<span>Name: </span><span class="viewresult">Nguyễn Quang Huy</span> 
						<br><br>
						<span>Position: </span><span class="viewresult">Fresher JAVA</span> 
						<br><br>
						<span>Skill: </span> <span class="viewresult">Java,Net</span>
						<br><br>
						<span>University: </span> <span class="viewresult">ĐH Sư Phạm Kỹ Thuật Tp Hồ Chí Minh</span>
						<br><br>
						<span>GST: </span> <span class="viewresult">Không</span>
						<br><br>
						<span>GPA: </span> <span class="viewresult">3</span>
						<br><br>
						<table id="table" class="table table-bordered table-striped">
						
							 <thead>
							    <tr style="background: skyblue">
									<th class="text-center">Round</th>
									<th class="text-center">Result</th>
								</tr>
						    </thead>
							<tbody id="myTable">
									<tr>
										<td>Round 1</td>
										<td>PASS</td>
										
									</tr>
									<tr>
										<td>Round 2</td>
										<td>PASS</td>
										
									</tr>
									<tr>
										<td>Round 3</td>
										<td>PASS</td>
										
									</tr>
							</tbody>
						</table>
					</div>
				</div>
					
				</div>
			</div>
		</div>
		
		</c:when>
		
		
		<c:when test="${mode == 'UPDATE' }">
		<div class="main-content">
		
		<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="home">Home</a>
						</li>

						<li><a href="candidate">Manage Result</a></li>
						<li class="active"> Display list interview result</li>
					</ul>
				</div>

				<div class="page-content">
					<div class="page-header">
						<h1> View and Edit Result 
							<small> 
								<i class="ace-icon fa fa-angle-double-right"></i> 
								You can view or edit result
							</small>
						</h1>
					</div>
					<div class="col-sm-6 col-xs-6">
						<h2>
							<c:out value="${mode}"></c:out>
							RESULT
						</h2>
					</div>
					
					<div class="row">
					<div class="col-sm-7">
						<div class="tab">
						  <button class="tablinks" onclick="openCity(event, 'round1')">Round 1</button>
						  <button class="tablinks" onclick="openCity(event, 'round2')">Round 2</button>
						  <button class="tablinks" onclick="openCity(event, 'round3')">Round 3</button>
						</div>
						
						<div class="tabcontent" id="round1">
							 
							 <span>Account :</span> <span>AnhPH10</span> 
							 <span style="margin-left: 80px">Name :</span> <span>Nguyễn Quang Huy</span>
								<br><br>
							 <table id="table" class="table table-bordered table-striped">
							 	
							 	<thead>
							 		<tr>
							 			<th colspan="3">Skill </th>
							 			<th>Answer the question </th>
							 			<th>Mask </th>
							 			<th>Note </th>
							 		</tr>
							 	</thead>
							 <tbody>
							 
							 	
							 	<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
						 		<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	
							 </tbody>
							 </table>
							 
							 <span>Replay ...</span>
							 <br>
							<audio controls autoplay></audio><br>
							  <button type="button" class="  btn-success">Save</button>
							    <button type="button" class="  btn-danger">Cancel</button>
						</div>
							
						<div class="tabcontent" id="round2">
						 
							 <span>Account :</span> <span>AnhPH10</span> 
							 <span style="margin-left: 80px">Name :</span> <span>Nguyễn Quang Huy</span>
								<br><br>
							 <table id="table" class="table table-bordered table-striped">
							 	
							 	<thead>
							 		<tr>
							 			<th colspan="3">Skill </th>
							 			<th>Answer the question </th>
							 			<th>Mask </th>
							 			<th>Note </th>
							 		</tr>
							 	</thead>
							 <tbody>
							 
							 	
							 	<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge Database</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
						 		<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge UML/Patten</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	
							 </tbody>
							 </table>
						 </div>
						
						<div class="tabcontent" id="round3">
							 
							<span>Account :</span> <span>AnhPH10</span> 
							 <span style="margin-left: 80px">Name :</span> <span>Nguyễn Quang Huy</span>
								<br><br>
							 <table id="table" class="table table-bordered table-striped">
							 	
							 	<thead>
							 		<tr>
							 			<th colspan="3">Skill </th>
							 			<th>Answer the question </th>
							 			<th>Mask </th>
							 			<th>Note </th>
							 		</tr>
							 	</thead>
							 <tbody>
							 
							 	
							 	<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge OOP</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
						 		<tr>
							 		<th rowspan="3">1</th>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	<tr>
							 		<td>Basic Knowledge</td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 		<td></td>
							 	<tr>
							 	
							 </tbody>
							 </table>
						</div>
					</div>
					<div class="col-sm-5">
						
						<p><strong>Information Candidate</strong></p>
						<span>Name: </span><span class="viewresult">Nguyễn Quang Huy</span> 
						<br><br>
						<span>Position: </span><span class="viewresult">Fresher JAVA</span> 
						<br><br>
						<span>Skill: </span> <span class="viewresult">Java,Net</span>
						<br><br>
						<span>University: </span> <span class="viewresult">ĐH Sư Phạm Kỹ Thuật Tp Hồ Chí Minh</span>
						<br><br>
						<span>GST: </span> <span class="viewresult">Không</span>
						<br><br>
						<span>GPA: </span> <span class="viewresult">3</span>
						<br><br>
						<table id="table" class="table table-bordered table-striped">
						
							 <thead>
							    <tr style="background: skyblue">
									<th class="text-center">Round</th>
									<th class="text-center">Result</th>
								</tr>
						    </thead>
							<tbody id="myTable">
									<tr>
										<td>Round 1</td>
										<td>PASS</td>
										
									</tr>
									<tr>
										<td>Round 2</td>
										<td>PASS</td>
										
									</tr>
									<tr>
										<td>Round 3</td>
										<td>PASS</td>
										
									</tr>
							</tbody>
						</table>
					</div>
				</div>
					
				</div>
			</div>
		</div>
		
		</c:when>
		
		
		</c:choose>
	<!-- FOOTER -->
 		<div class="footer">
            <div class="footer-inner">
                <div class="footer-content">
                    <span class="bigger-120">
							<span class="blue bolder">FPT</span> Application &copy; 2017-2018
                    </span>

                    &nbsp; &nbsp;
                    <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
                </div>
            </div>
        </div>
		<!-- FOOTER -->
	<!--  Script các tab trong result  -->
		<script>
			function openCity(evt, cityName) {
			    var i, tabcontent, tablinks;
			    tabcontent = document.getElementsByClassName("tabcontent");
			    for (i = 0; i < tabcontent.length; i++) {
			        tabcontent[i].style.display = "none";
			    }
			    tablinks = document.getElementsByClassName("tablinks");
			    for (i = 0; i < tablinks.length; i++) {
			        tablinks[i].className = tablinks[i].className.replace(" active", "");
			    }
			    document.getElementById(cityName).style.display = "block";
			    evt.currentTarget.className += " active";
			}
		</script>
		
	
	
	
	
</body>
</html>