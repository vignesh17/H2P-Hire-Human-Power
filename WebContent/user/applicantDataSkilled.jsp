<!DOCTYPE html>
<html lang="en" dir="ltr">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="t"%>
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

<!-- job start here -->
	<div id="job">
		<div class="container">
			<div class="row">
				<div class="canditate-profile">
					<ul class="nav nav-tabs list-inline">
						
						<li class="active">
							<a href="#submit-job-form" data-toggle="tab" aria-expanded="false">APPLICANT DETAILS</a>
						</li>
						
					</ul>
				</div>
					
						
					<!-- submit-job-form start here -->
	
	<center>
	
	<h2>List of Applicants</h2>

<table id="customers">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Contact Number</th>
<th>Skills OF Employee<th>
</tr>
<t:forEach items="${sessionScope.get_user_data}" var="a">
<tr>
<td>${a.firstname}</a></td>
<td>${a.lastname}</td>
<td>${a.email}</td>
<td>${a.contactnumber}</td>
<td>${a.skills}</td>


<td><button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/selectEmployeeController?user_id=${a.register_id }&event_id=<%=request.getParameter("event_id") %>'">Select</button></td>
<td><button type="button" class="btn btn-info" onclick="location.href='<%=request.getContextPath()%>/viewRatingsController?user_id=${a.register_id }&event_id=<%=request.getParameter("event_id") %>&flag=manager'">See Ratings</button></td>
</tr>
</t:forEach>
</table>
	
	</center>
	
	<div class="button">
						<a href="<%=request.getContextPath() %>/user/managerprofile.jsp" class="btn btn-primary btnus">BACK TO PROFILE</a>
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