<!DOCTYPE html>
<html lang="en" dir="ltr">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Profile</title>
<!-- Bootstrap stylesheet -->
<link href="<%=request.getContextPath() %>/user/css/bootstrap.css" rel="stylesheet">
<!-- font -->
<link href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i,700%7CSource+Sans+Pro:300,400,600,700" rel="stylesheet"> 
<!-- stylesheet -->
<link href="<%=request.getContextPath() %>/user/css/style.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath() %>/user/css/style_cyan.css" title="style_cyan" rel="alternate stylesheet" type="text/css"/>
<link href="<%=request.getContextPath() %>/user/css/style_red.css" title="style_red" rel="alternate stylesheet" type="text/css"/>
<link href="<%=request.getContextPath() %>/user/css/style_green.css" title="style_green" rel="alternate stylesheet" type="text/css"/>
<link href="<%=request.getContextPath() %>/user/css/style_blue.css" title="style_blue" rel="alternate stylesheet" type="text/css"/>
<!-- font-awesome -->
<link href="<%=request.getContextPath() %>/user/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- crousel css -->
<link href="<%=request.getContextPath() %>/user/css/owl.carousel.css" rel="stylesheet" type="text/css" />
<!--bootstrap select-->
<link href="<%=request.getContextPath() %>/user/css/bootstrap-select.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- top start here -->
<%@include file="header2.jsp" %>

<!-- header end here -->
<%if((request.getAttribute("msg")!=null))
      {
    	  %>
      <div class="alert alert-info">
            <strong><%= request.getAttribute("msg") %></strong>
            
        </div>
      <%
		request.setAttribute("msg", null);
      } %>
<!-- jobs start here -->
	<div id="jobs">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- about-content start here -->
					<div class="jobs-content canditate">
						<h1>MY PROFILE</h1>
						<ul class="list-inline">
							<li>
								<a href="index.jsp">Home</a>
							</li>
							<li>></li>
							<li>
								<a href="my-profile.html">Candidates</a>
							</li>
						</ul>
					</div>
				<!-- jobs-content end here -->
				</div>
			</div>
		</div>
	</div>
<!-- jobs end here -->

<%if((request.getAttribute("msg")!=null))
      {
    	  %>
      <div class="alert alert-info">
            <strong><%= request.getAttribute("msg") %></strong>
            
        </div>
      <%
		request.setAttribute("msg", null);
      } %>
<!-- job start here -->
	<div id="job">
		<div class="container">
			<div class="row">
				<div class="canditate-profile">
					<ul class="nav nav-tabs list-inline">
						<li class="active">
							<a href="#profile" data-toggle="tab" aria-expanded="true">PROFILE</a>
						</li>
						<li class="">
							<a href="#applied" data-toggle="tab" aria-expanded="false">POSTED JOBS</a>
						</li>
						<li class="">
							<a href="#past" data-toggle="tab" aria-expanded="false">PREVIOUS JOBS</a>
						</li>
						<li class="">
							<a href="#submit-job-form" data-toggle="tab" aria-expanded="false">POST NEW JOBS</a>
						</li>
						<li class="">
							<a href="#changepassword" data-toggle="tab" aria-expanded="true">CHANGE PASSWORD</a>
						</li>
						
					</ul>
				</div>
					
				<div class="tab-content">
					<div class="tab-pane active" id="profile">
						<div class="col-md-12">
						<form class="form-horizontal candidate-single" method="post">
						<fieldset>
							<div class="form-group">
								<div class="col-sm-4">
									<img src="images/my_profile.jpg" alt="my_profile" title="my_profile" class="img-responsive">
									
								</div>
								<div class="col-sm-8">
									<div class="matter">
										<label>FIRST NAME 
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span><%= session.getAttribute("firstname") %></span>
									</div>	
									<div class="matter">
										<label>LAST NAME
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span><%= session.getAttribute("lastname") %></span>
									</div>	
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>Contact Number
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span><%= session.getAttribute("contactnumber") %></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>Email
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span><%= session.getAttribute("email") %></span>
									</div>
								</div>
							</div>
							
						</fieldset>
						</form>
						</div>
					</div>
					
				
				<div class="tab-pane" id="applied">
				<c:forEach items="${sessionScope.list_of_all_posted_jobs }" var="i" varStatus="j">
				
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
						
								<div class="matter">
									<h1>${i.eventname }</h1>
									<ul class="list-inline">
										<li>
											<i class="fa fa-bookmark" aria-hidden="true"></i>${i.jobcategory }
										</li>
										<li>
											<i class="fa fa-map-marker" aria-hidden="true"></i> ${i.location}
										</li>
									</ul>
									<p>${i.eventdes}</p>
									<input type="hidden" name="event_id" value="${i.event_id}"/>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/submitjobController?event_id=${i.event_id}'">EDIT JOB</button>
								<button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/editjobController?event_id=${i.event_id}'">DELETE JOB</button>
								<center><button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/viewapplicantController?event_id=${i.event_id }'">VIEW APPLICANTS</button></center>
							</div>
							</div>
							</c:forEach>
						</div>
						<!-- POSTED JOBS END HERE -->
						<div class="tab-pane" id="past">
				<c:forEach items="${sessionScope.list_of_all_past_jobs }" var="m" varStatus="n">
				
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="matter">
							
									<h1>${m.eventname }</h1>
									<ul class="list-inline">
										<li>
											<i class="fa fa-bookmark" aria-hidden="true"></i>${m.jobcategory }
										</li>
										<li>
											<i class="fa fa-map-marker" aria-hidden="true"></i> ${m.location}
										</li>
									</ul>
									<p>${m.eventdes}</p>
									<input type="hidden" name="event_id" value="${m.event_id}"/>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/submitjobController?event_id=${m.event_id}'">EDIT JOB</button>
								<button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/editjobController?event_id=${m.event_id}'">DELETE JOB</button>
								<center><button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/viewapplicantController?event_id=${m.event_id }&flag=past'">VIEW APPLICANTS</button></center>
							</div>
							</div>
							</c:forEach>
						</div>
					<!-- submit-job-form start here -->
	<div class="tab-pane "id="submit-job-form">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- submit-form start here -->
					<div class="submit-form">
						<div class="border"></div>
						<div class="border1"></div>
						<form class="form-horizontal" action="<%=request.getContextPath()%>/submitjobController" method="post">
							<fieldset>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Event name</label>
										<input class="form-control" id="eventname" placeholder=" " value="" name="eventname" required="" type="text">
									</div>
									<div class="col-sm-6">
										<label>No of employees</label>
										<input class="form-control" placeholder="" id="num" value="" name="num" required="" type="number">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Location (optional)</label>
										<input class="form-control" id="location" placeholder="e.g. albany*" value="" name="location" required="" type="text">
									</div>
									<div class="col-sm-6">
										<label>Job category</label>
										<select class="selectpicker form-control" name="jobcategory">
											<option selected="" value="skilled" >skilled</option>
											<option value="unskilled">unskilled</option>
											
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>date</label>
										<input  type="date" class="form-control" id="date" placeholder="e.g. 07/27/17 *" value="" name="date" required="" >
									</div>
									<div class="col-sm-6">
										<label>day</label>
										<input class="form-control" placeholder=" e.g. monday*" id="day" value="" name="day" required="" type="text">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Start time</label>
										<input type="time" "form-control" id="starttime" placeholder="e.g. 10.00  *" value="" name="starttime" required="" type="number">
									</div>
									<div class="col-sm-6">
										<label>End time </label>
										<input type="time" "form-control" placeholder=" e.g. 10.00 *" id="endtime" value="" name="endtime" required="" type="number">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<label>Event Description</label>
										<textarea class="form-control" id="eventdes" rows="10" name="eventdes" placeholder="Your description *" required=""></textarea>
									</div>
									
								</div>
																<div class="button">
									<button type="submit" value="Submit" class="btn btn-primary btnus">SUBMIT A JOB</button>
								</div>
							</fieldset>
						</form>
						</div>
					</div>
					</div>
					</div>
					
					</div>
					<!-- submit-form end here -->
					<div class="tab-pane" id="changepassword">
				          <form action="<%= request.getContextPath()%>/changePasswordController?user_id=<%= session.getAttribute("user_id") %>&flag=employee" method="post">
							Add new password: <input class="form-control" type="text" name="newPassword1" id="newPassword1" />
                            Add new password again:<input class="form-control" type="text" id="newPassword2" name="newPassword2" />	                       
							<input type="submit" value="Submit" />
						  </form> 
	
					</div>
				</div>
			</div>
			</div>
	
<!-- submit-job-form end here -->

	</div>							
			
				
<!-- Footer end here -->
<!-- jquery -->
<script src="<%=request.getContextPath() %>/user/js/jquery.2.1.1.min.js" type="text/javascript"></script>
<!-- bootstrap js -->
<script src="<%=request.getContextPath() %>/user/js/bootstrap.min.js" type="text/javascript"></script>
<!--bootstrap select-->
<script src="<%=request.getContextPath() %>/user/js/bootstrap-select.js" type="text/javascript"></script>
<!-- owlcarousel js -->
<script src="<%=request.getContextPath() %>/user/js/owl.carousel.min.js" type="text/javascript"></script>
<!--internal js-->
<script src="<%=request.getContextPath() %>/user/js/internal.js" type="text/javascript"></script>
<!-- color switcher-->
<script src="<%=request.getContextPath() %>/user/js/switcher.js" type="text/javascript"></script>
</body>
</html>
