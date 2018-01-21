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
<title>Manage Interview Schedule</title>

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
	<style>
        

        #controls {
            display: flex;
            flex-direction: row;
            align-items: left;
            justify-content: space-around;
            height: 20%;
            width: 100%;
        }

        #record {
            height: 15vh;
        }

        #record.recording {
            background: red;
            background: -webkit-radial-gradient(center, ellipse cover, #ff0000 0%, lightgrey 75%, lightgrey 100%, #7db9e8 100%);
            background: -moz-radial-gradient(center, ellipse cover, #ff0000 0%, lightgrey 75%, lightgrey 100%, #7db9e8 100%);
            background: radial-gradient(center, ellipse cover, #ff0000 0%, lightgrey 75%, lightgrey 100%, #7db9e8 100%);
        }

        #save, #save 
		{
            height: 10vh;
        }

        #save {
            opacity: 0.25;
        }

        #save[download] {
            opacity: 1;
        }

        #viz {
            height: 80%;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-around;
            align-items: left;
        }

       

    </style>

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
                <li > 
                	<a href="InterviewResult"> 
	                	<i class="menu-icon fa fa-pencil-square-o"></i> 
	                	<span class="menu-text">Manage Result</span>
					</a>			
                </li>
                <li class="active">  
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
		<div class="main-content">

			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="home">Home</a>
						</li>

						<li><a href="candidate">Manage Interview Schedule</a></li>
						<li class="active">List Interview Schedule</li>
					</ul>
				</div>

				<div class="page-content">
					<div class="page-header">
						<h1> Add, Update and Delete Candidate 
							<small> 
								<i class="ace-icon fa fa-angle-double-right"></i> 
								You can delete candidate or update candidate or delete candidate
							</small>
						</h1>
					</div>
					<div class="col-xs-12">
						<h2>Interview Schedule</h2>
					</div>
					<form action="" method="POST">
						<div class="form-group col-sm-3">
							<span>Full Name: </span> 
							<input style="width: 230px!important;" type="text" class="form-control" name="fullname" 
								id ="fullname" required value="Nguyen Quang Huy" disabled>
							<br>
							<span>Position:</span> <br>
								<input style="width: 230px!important; " type="text" class="form-control" name="position" 
								id ="position" required value="Fresher JAVA" disabled>
                   			<br>
							<span>Round: </span>  
							<input style="width: 230px!important;" class="form-control" type="text" name="round" 
								id ="round" required value="2" disabled>
								
							<br>
						</div>
					<div  class="table-responsive  col-sm-9 ">	
						<table id="table" class="table table-bordered table-striped" id ="simple-table">
						    <thead>
							    <tr style="background: skyblue">
									<th class="text-center">Full Name</th>
									<th class="text-center">Start Time</th>
									<th class="text-center">Action</th>
								</tr>
						    </thead>
							<tbody id="myTable">
								<c:forEach items="${schedules }" var="list">
									<tr>
										<td>${list.fullname }</td>
										<td>${list.start }</td>
										<td class="text-center">
											<select style="width: 80px !important; height: 26px!important; "
											 onchange="myFunction(this.value)">
											  <option value="0">Option</option>
											  <option value="1">Start</option>
											  <option value="2" id="myBtn1">Edit Information</option>
											</select>	
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</form>
				</div>
			</div>
		</div>
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
	<!-- MODAL  -->
		<script type="text/javascript">
			function myFunction(val) {
				if(val==2){
					
					document.getElementById("fullname").disabled = false;
					document.getElementById("position").disabled = false;
					document.getElementById("round").disabled = false;
					
					
					var table = document.getElementById("simple-table"),rindex;
					
					for(var i =1 ; i < table.rows.length; i++)
					{
						alert("Huy");
						 table.rows[i].onclick = function()
						{
							rindex = this.rowIndex;		
							document.getElementById("fullname").value = this.cells[0].innerHTML;
							document.getElementById("position").value = this.cells[1].innerHTML;
							document.getElementById("round").value = this.cells[2].innerHTML;
							
						};
					}
					
				}	
				else
					if(val==1)
					{
						$("#myModal_1").modal();
					}					
			}
			$(document).ready(function() {
				$(".addcandidate").click(function(){
					$("#myModal_0").modal();
				});
			});
		</script>
		
		
	
	<!-- Start Schedule -->
	<div class="modal fade" id="myModal_1" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content" >
					<div class="modal-header" style="padding: 0px 10px; background:skyblue">
						<button style="margin-top:12px;" type="button" class="close" data-dismiss="modal">&times;</button>
						<h2>
							<span class="glyphicon glyphicon-user"></span>Start Interview
						</h2>
					</div>
					<div class="modal-body" style="padding: 20px 30px;">
							
							<script src="Style/Huy/js/audiodisplay.js"></script>
						    <script src="Style/Huy/js/recorderjs/recorder.js"></script>
						    <script src="Style/Huy/js/main.js"></script>
							
						<div class="row">
						<div class="col-sm-5">

								<div id="viz">
									    <canvas id="analyser" width="200px" height="60px"></canvas>
									    <canvas id="wavedisplay" width="200px" height="60px"></canvas>
									</div>
									<div id="controls">
									    <img id="record" src="Style/images/mic128.png" onclick="toggleRecording(this);">
									    <a id="save" href="#"><img src="Style/images/save.svg" style="margin-left: 30px;margin-top: 20px;"></a>
									</div>
						</div>	
						<div class="col-sm-7">
							<div class="">
								<span>Full Name: </span> 
								<input style="width: 230px!important;" type="text" class="form-control" name="fullname" 
									id ="fullname" required value="Nguyen Quang Huy" disabled>
								<br>
								<span>Position:</span> <br>
									<input style="width: 230px!important; " type="text" class="form-control" name="position" 
									id ="position" required value="Fresher JAVA" disabled>
	                   			<br>
								<span>Round: </span>  
								<input style="width: 230px!important;" class="form-control" type="text" name="round" 
									id ="round" required value="2" disabled>
									
								<br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

</body>
</html>