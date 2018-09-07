<!-- top start here -->
	<div id="top">
		<!-- top container start here-->
		<div class="container">
			<div id="top-links">
				<ul class="list-inline pull-left button">
					<li>
						<a href="about.jsp"><span>ABOUT US</span></a>
					</li>
					<li>
						<a href="contact.jsp"><span>CONTACT US</span></a>
					</li>
					<li>
						<a href="contact.jsp"><span>EMAIL : h2p.job@gmail.com</span></a>
					</li>
				</ul>
				<ul class="list-inline pull-right icon">
					<li>
						<a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
					</li>
					<li>
						<a href="https://twitter.com/" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					</li>
					<li>
						<a href="https://plus.google.com/" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
					</li>
					<li>
						<a href="https://www.instagram.com/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</li>
					<li>
						<a href="https://in.pinterest.com/" target="_blank"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a>
					</li>
				</ul>
			</div>
		</div>
		<!-- top container end here-->
	</div>
<!-- top end here -->
	
<!-- header start here-->
	<header>
		<!-- header container start here-->
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-md-3 col-xs-12">
					<!-- logo start here-->
					<div id="logo">
						<a href="<%=request.getContextPath() %>/user/index.jsp">
							<img class="img-responsive logochange" alt="logo" title="logo" src="<%=request.getContextPath() %>/user/images/logo.png" />
						</a>
					</div>
					<!-- logo end here-->
				</div>
				<div class="col-sm-3 col-md-3 col-xs-12 visible-xs paddleft">
					<!-- button-login start here -->
					<div class="button-login pull-right"><style>p.indent{ padding-bottom: 18em }</style>
						<button type="button" class="btn btn-default btn-lg" onclick="location.href='<%=request.getContextPath()%>/user/managerlogin.jsp'"> Login</button>
						
						<button type="button" class="btn btn-primary btn-lg" onclick="location.href='<%=request.getContextPath()%>/loginController?action=logout'">Logout</button>
					</div>
					<!-- button-login end here -->
				</div>
			    <div class="col-sm-6 col-md-6 col-xs-12 padd0">
					<!-- menu start here-->
					<nav class="navbar" id="menu">
						<div class="navbar-header">
							<span class="menutext visible-xs">Menu</span>
							<button data-target=".navbar-ex1-collapse" data-toggle="collapse" class="btn btn-navbar navbar-toggle" type="button"><i class="fa fa-bars" aria-hidden="true"></i></button>
						</div>
						<div class="collapse navbar-collapse navbar-ex1-collapse padd0">
							<ul class="nav navbar-nav pull-left">
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="index.jsp">HOME</a>
									
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="managerlogin.jsp">JOBS</a>
									
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">EMPLOYEE</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
												
												<li>
													<a id="demo3" onclick="myFunction3()" href="<%=request.getContextPath() %>/user/managerlogin.jsp">MY PROFILE</a>

												<script>
													function myFunction3() {
													alert("Please Login to see profile");
	
													}
												</script>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">MANAGERS</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
												<li>
													<a href="employers.jsp">Managers</a>
												</li>
												
												<li>
												<a id="demo1" onclick="myFunction1()" href="<%=request.getContextPath() %>/user/managerlogin.jsp">employer detail</a>

												<script>
													function myFunction1() {
													alert("Please Login first");
	
													}
												</script>
													
												</li>
												<li>
												<a id="demo" onclick="myFunction()" href="<%=request.getContextPath() %>/user/managerlogin.jsp">Submit Job</a>

												<script>
													function myFunction() {
													alert("Please Login for submit job");
	
													}
												</script>


													</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="dropdown">
									
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">PAGES
										<span class="fa fa-angle-down"></span>
									</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
												<li>
													<a href="about.jsp">About Us</a>
												</li>
												<li>
													<a href="<%=request.getContextPath() %>/user/managerlogin.jsp">Login</a>
												</li>
												<li>
												
												
													<a href="managerregister.jsp">Register as a Manager</a>
												</li>
												<li>
													<a href="employeeregister.jsp">Register as an employee</a>
												</li>
												<li>
													<a href="contact.jsp">Contact us</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</nav>
					<!-- menu end here -->
				</div>
			    <div class="col-sm-3 col-md-3 col-xs-12 hidden-xs">
					<!-- button-login start here -->
					

					<div class="button-login pull-right">
					<style>
   					 .divider{
  								  width:1px;
  								  height:auto;
  								  display:inline-block; 
  								  position:relative;
							}
    				</style>
						<button type="button" class="btn btn-default btn-lg" Width="100%"onclick="location.href='<%=request.getContextPath()%>/user/managerlogin.jsp'">Login</button>
						    <div class="divider"/>
						</div>
					<!-- button-login end here -->
				</div>
			</div>
		</div>
		<!-- header container end here -->
	</header>