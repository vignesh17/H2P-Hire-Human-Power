<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<%@include file="header2.jsp" %>
<!-- header end here -->
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
</style>
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
							<a href="#searchjobs" data-toggle="tab" aria-expanded="true">SEARCH JOBS</a>
						</li>
						<li class="">
							<a href="#applied" data-toggle="tab" aria-expanded="false">APPLIED JOBS</a>
						</li>
						<li class="">
							<a href="#jobhistory" data-toggle="tab" aria-expanded="false">JOB HISTORY</a>
						</li>
						<li class="">
							<a href="#myskills" data-toggle="tab" aria-expanded="true">MY SKILLS</a>
						</li>
						<li class="">
							<a href="#changepassword" data-toggle="tab" aria-expanded="true">CHANGE PASSWORD</a>
						</li>
<!-- 						<li class=""> -->
<!-- 							<a href="#password" data-toggle="tab" aria-expanded="false">CHANGE PASSWORD</a> -->
<!-- 						</li> -->
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
										<label>YOUR SKILLS
										</label>
										<span><%= session.getAttribute("updatedSkill") %></span>
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
					
					<div class="tab-pane" id="searchjobs">
				<c:forEach items="${sessionScope.list_of_all_posted_jobs_employee_1 }" var="i" varStatus="j">
				
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
							<!-- <div class="image"> 
 									<a href="jobs.html"> 
 										<img class="img-responsive" src="images/p1.jpg" alt="p1" title="p1"/>
 									</a>	 
 									<div class="buttons"> 
 										<div class="open-down"> 
 											<button type="button" class="rotate1"> 
 												<i class="fa fa-link" aria-hidden="true"></i> 
 											</button> 
 											<button type="button" class="rotate1"> 
 												<i class="fa fa-search" aria-hidden="true"></i> 
 											</button> 
 										</div> 
 									</div>		 
 								</div> -->		 
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
								<button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/employeeJobController?event_id=${i.event_id}'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath() %>/applyEmployeeJobController?event_id=${i.event_id}'">APPLY NOW</button>
							</div>
							</div>
							</c:forEach>
							
							
							
							
							
							<c:forEach items="${sessionScope.list_of_all_posted_jobs_employee_2 }" var="i" varStatus="j">
				
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
							<!-- <div class="image"> 
 									<a href="jobs.html"> 
 										<img class="img-responsive" src="images/p1.jpg" alt="p1" title="p1"/>
 									</a>	 
 									<div class="buttons"> 
 										<div class="open-down"> 
 											<button type="button" class="rotate1"> 
 												<i class="fa fa-link" aria-hidden="true"></i> 
 											</button> 
 											<button type="button" class="rotate1"> 
 												<i class="fa fa-search" aria-hidden="true"></i> 
 											</button> 
 										</div> 
 									</div>		 
 								</div> -->		 
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
								<button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/employeeJobController?event_id=${i.event_id}'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath() %>/applyEmployeeJobController?event_id=${i.event_id}'">APPLY NOW</button>
							</div>
							</div>
							</c:forEach>
							
						</div>	
							
						<div class="tab-pane" id="applied">
				<c:forEach items="${sessionScope.list_of_all_applied_jobs_details }" var="i" varStatus="j">
				
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
							<!-- <div class="image"> 
 									<a href="jobs.html"> 
 										<img class="img-responsive" src="images/p1.jpg" alt="p1" title="p1"/>
 									</a>	 
 									<div class="buttons"> 
 										<div class="open-down"> 
 											<button type="button" class="rotate1"> 
 												<i class="fa fa-link" aria-hidden="true"></i> 
 											</button> 
 											<button type="button" class="rotate1"> 
 												<i class="fa fa-search" aria-hidden="true"></i> 
 											</button> 
 										</div> 
 									</div>		 
 								</div> -->		 
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
								<button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/registerController?event_id=${i.event_id}'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="if (confirm('Are you sure you want to leave this job?')) location.href='<%=request.getContextPath()%>/leaveEmployeeJobController?event_id=${i.event_id}'; else return false; ">LEAVE JOB</button>
								
								</div>
							</div>
							</c:forEach>
						</div>	
						<div class="tab-pane" id="jobhistory">
				<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
				
					<center>
	
	<h2>List of Reviews</h2>
Average: "${sessionScope.average}" 
<table id="customers">
<tr>
<th>Event Name</th>
<th>Event Date</th>
<th>Manager</th>
<th>Ratings</th>
<th>Comments<th>
</tr>
<c:forEach items="${sessionScope.list_of_all_review }" var="i" varStatus="j">
<tr>
<td>${i.eventname}</a></td>
<td>${i.eventDate}</td>
<td>${i.manager}</td>
<td>${i.ratings}</td>
<td>${i.comments}</td>
</tr>
</c:forEach>
</table>
	
	</center>
							
							</div>
						 </div>
						</div>	
						<div class="tab-pane" id="myskills">
				          <form action="<%= request.getContextPath()%>/addSkillController" method="post">
							Add new skills: <input type="text" name="newSkills" />
	
							<input type="submit" value="Submit" />
							
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>Your Skills
										
										</label>
										<span><%= session.getAttribute("updatedSkill") %></span>
									</div>
								</div>
							</div>
							
								</form>				          
						</div>
						
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
	</div>
<!-- job end here -->



<!-- Footer start here -->
	<footer>
		<div class="container">
			<div class="bor col-md-12 col-sm-12 col-xs-12 padd0">
				<div class="col-sm-5 col-md-5 col-xs-12 subscribe">
					<h5>Subscribe Our Newsletter</h5>
					<form name="subscribe">
						<div class="form-group">
							<div class="input-group">
								<input type="text" placeholder="Enter your Email Address" id="subscribe_email1" name="subscribe_email" value="" class="form-control">
								<div class="input-group-btn">
									<button class="btn btn-default btn-lg" type="submit"><i class="fa fa-paper-plane-o" aria-hidden="true"></i> SUBSCRIBE</button>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="col-sm-4 col-md-4 col-xs-12 follow">
					<h5>Follow us on</h5>
					<ul class="list-inline socialicon">
						<li>
							<a href="https://www.facebook.com/" target="_blank">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="https://twitter.com/" target="_blank">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="https://plus.google.com/" target="_blank">
								<i class="fa fa-google-plus" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="https://www.instagram.com/" target="_blank">
								<i class="fa fa-instagram" aria-hidden="true"></i>
							</a>
						</li>
						<li>
							<a href="https://in.linkedin.com/" target="_blank">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</a>
						</li>	
					</ul>
				</div>
				<div class="col-sm-3 col-md-3 col-xs-12 need">
					<h5>Need Help ?</h5>
					<h6><i class="fa fa-phone" aria-hidden="true"></i> CALL US : <span>1800-0000-1234</span></h6>
				</div>	
			</div>
			<div class="row">
				<div class="col-sm-3 col-md-3 col-xs-12 matter">
					<img src="images/foot-logo.png"  class="img-responsive footerlogochange" alt="foot-logo" title="foot-logo" />
					<p>Being unbiased towards all candidates<br/>
						Recruiting the best talent<br/>
						Helping the employees identify their potential<br/>
						Promoting transparent, merit based selection<br/>
						Developing cost effective recruitment process<br/>
						Appointing an authority for final decision<br/>
						</p>
						
				</div>
				<div class="col-sm-3 col-md-3 col-xs-12 info">
					<h5>Information</h5>
					<ul class="list-unstyled">
						<li>
							<a href="about.jsp"><i class="fa fa-caret-right" aria-hidden="true"></i>About Us</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Help Desk</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Support</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Privacy Policy</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Terms & Conditions</a>
						</li>
					</ul>
				</div>	
				<div class="col-sm-3 col-md-3 col-xs-12 use">
					<h5>Useful Links</h5>
					<ul class="list-unstyled">
						<li>
							<a href="index.jsp"><i class="fa fa-caret-right" aria-hidden="true"></i>Homepage</a>
						</li>
						<li>
												<a id="demo1" onclick="myFunction1()" href="managerlogin.jsp">submit job</a>

												<script>
													function myFunction1() {
													alert("Please Login first");
	
													}
												</script>
						</li>
						<li>
												<a id="demo1" onclick="myFunction1()" href="managerlogin.jsp">all candidates</a>

												<script>
													function myFunction1() {
													alert("Please Login first");
	
													}
												</script>
						</li>
						<li>
							<a href="blog.html"><i class="fa fa-caret-right" aria-hidden="true"></i>Latest Blogs</a>
						</li>
						<li>
												<a id="demo1" onclick="myFunction1()" href="managerlogin.jsp">jobs</a>

												<script>
													function myFunction1() {
													alert("Please Login first");
	
													}
												</script>
						</li>
					</ul>
				</div>	
			
				<div class="col-sm-3 col-md-3 col-xs-12 padd0">
					<h5>Get in touch</h5>
					<form class="form-horizontal form" method="post">
						<fieldset>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="input-username" placeholder="Name" value="" name="email" required="" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="input-email" placeholder="Email Address" value="" name="email" required="" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="input-group col-sm-12">
									<input type="text" placeholder="Message" id="message" name="message" value="" class="form-control big">
									<div class="input-group-btn">
										<button class="btn btn-default btn-lg" type="submit"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
									</div>
								</div>
							</div>
						</fieldset>
					</form>
				</div>	
			</div>
		</div>
	</footer>
	
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