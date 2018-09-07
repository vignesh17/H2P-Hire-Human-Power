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
							<a href="#submit-job-form" data-toggle="tab" aria-expanded="false">EDIT DETAILS</a>
						</li>
						
					</ul>
				</div>
					
						
					<!-- submit-job-form start here -->
	<div class="tab-pane-active "id="submit-job-form">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<!-- submit-form start here -->
					<div class="submit-form">
						<div class="border"></div>
						<div class="border1"></div>
					
						<c:forEach items="${sessionScope.edit_jobs }" var="x">
						<form class="form-horizontal" action="<%=request.getContextPath()%>/editjobController?event_id=${x.event_id}" method="post">
							<fieldset>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Event name</label>
										<input class="form-control" id="eventname" placeholder=" " value="${x.eventname }" name="eventname" required="" type="text">
									</div>
									<div class="col-sm-6">
										<label>No of employees</label>
										<input class="form-control" placeholder="" id="numberofemployees" value="${x.num }" name="numberofemployees" required="" type="number">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Location (optional)</label>
										<input class="form-control" id="location" placeholder="e.g. albany*" value="${x.location }" name="location" required="" type="text">
									</div>
									<div class="col-sm-6">
										<label>Job category</label>
										<select class="selectpicker form-control" name="job_category">
											<option selected="" value="skilled" >skilled</option>
											<option value="unskilled">unskilled</option>
											
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>date</label>
										<input  type="date" class="form-control" id="date" placeholder="e.g. 07/27/17 *" value="${x.date }" name="date" required="" >
									</div>
									<div class="col-sm-6">
										<label>day</label>
										<input class="form-control" placeholder=" e.g. monday*" id="day" value="${x.day }" name="day" required="" type="text">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-6">
										<label>Start time</label>
										<input type="time" "form-control" id="starttime" placeholder="e.g. 10.00  *" value="${x.starttime }" name="starttime" required="" type="number">
									</div>
									<div class="col-sm-6">
										<label>End time </label>
										<input type="time" "form-control" placeholder=" e.g. 10.00 *" id="endtime" value="${x.endtime }" name="endtime" required="" type="number">
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-12">
										<label>Event Description</label>
										<textarea class="form-control" id="eventdes" rows="10" name="eventdes" placeholder="Your description *" required=""></textarea>
									</div>
									
								</div>
																<div class="button">
									<button type="submit" value="Submit" class="btn btn-primary btnus">EDIT A JOB</button>
								</div>
							</fieldset>
						</form>
					</div>
					</c:forEach>
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
