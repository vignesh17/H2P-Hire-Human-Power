<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>H2P Admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath() %>/admin/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=request.getContextPath() %>/admin/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="<%=request.getContextPath() %>/admin/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=request.getContextPath() %>/admin/css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="<%=request.getContextPath() %>/admin/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="AdminHome.jsp">Administrator</a>
        </div>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

<!-- Top Navigation: Left Menu -->
        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <li><a href="../user/index.jsp"><i class="fa fa-home fa-fw"></i> H2P Hire Human Power Website</a></li>
        </ul>

        <!-- Top Navigation: Right Menu -->
        <ul class="nav navbar-right navbar-top-links">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> Administrator <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="<%=request.getContextPath()%>/loginController?action=logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
               </ul>
            </li>
        </ul>

        <!-- Sidebar -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">

                <ul class="nav" id="side-menu">
                    <li>
                        <a href="AdminHome.jsp" class="active"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Content<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Admin-Events.jsp">Events</a>
                            </li>
            
                            <li>
                                <a href="Admin-EventOwners.jsp">Event Owners</a>
                            </li>
                            
                            <li>
                                <a href="Admin-Employees.jsp">Employees</a>
                            </li>
                            
                            <li>
                                <a href="Admin-PreviousEvents.jsp">Previous Events</a>
                            </li>
                            
                        </ul>
                            </li>
                        </ul>
                    
              

            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Employees<a href="../user/employeeregister.jsp" >Add</a></h1>
                </div>
            </div>
				<div id="employees"><h2>Employees</h2></div>
				<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
    			<script type="text/javascript">
				    $(document).ready(function() {
				    		$.ajax({
				    			type : 'GET',
				    			url : '../Employees',
				    			traditional: true,
				    			success : function(responseText) 
				    			{
				    				//console.log(responseText);
				    		    	$('#employees').html(responseText);
				    		    }
				    		
				    });
				    });
				    
				  </script>
			  <script type="text/javascript">
					function delete_employee(id){
						var data_userid= "id_user="+id;
						//alert(data_userid);
						$.ajax({
			    			type : 'GET',
			    			url : '../EmployeeDelete',
			    			data : data_userid,
			    			success : function(responseText) 
			    			{
			    				window.location.href = "Admin-Employees.jsp"
			    		    }	
			    	});
						
					}

</script>
<div id="eventDescription"><h2>Event Description</h2></div>
<script type="text/javascript">
	function jobs_employee(id){
		var user_id= "id_user="+id;

	$.ajax({
		type : 'GET',
		url : '../JobsView',
		data : user_id,
		success : function(responseText) 
		{
			//console.log(responseText);
			$('#eventDescription').html(responseText);
	    }	
	});

	
}


</script>



        </div>
    </div>

</div>

<!-- jQuery -->
<script src="<%=request.getContextPath() %>/admin/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<%=request.getContextPath() %>/admin/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="<%=request.getContextPath() %>/admin/js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="<%=request.getContextPath() %>/admin/js/startmin.js"></script>

</body>
</html>