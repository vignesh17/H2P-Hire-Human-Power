<!DOCTYPE html>
<html lang="en" dir="ltr">
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
						<a href="contact.jsp"><span>EMAIL : h2p.jobportal@gmail.com</span></a>
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
						<a href="index.html">
							<img class="img-responsive logochange" alt="logo" title="logo" src="images/logo.png" />
						</a>
					</div>
					<!-- logo end here-->
				</div>
				<div class="col-sm-3 col-md-3 col-xs-12 visible-xs paddleft">
					<!-- button-login start here -->
					<div class="button-login pull-right">
						<button type="button" class="btn btn-default btn-lg" onclick="location.href='login.html'">Login</button>
						<button type="button" class="btn btn-primary btn-lg" onclick="location.href='submit-job.html'">Submit Job</button>
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
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">HOME</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
												<li>
													<a href="index.html">Header layout 1</a>
												</li>
												<li>
													<a href="header2.html">Header layout 2</a>
												</li>
												<li>
													<a href="header3.html">Header layout 3</a>
												</li>
												<li>
													<a href="header4.html">Header layout 4</a>
												</li>
												<li>
													<a href="index.html">Footer layout 1</a>
												</li>
												<li>
													<a href="header2.html">Footer layout 2</a>
												</li>
												<li>
													<a href="header3.html">Footer layout 3</a>
												</li>
												<li>
													<a href="header4.html">Footer layout 4</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">JOBS</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
												<li>
													<a href="jobs.html">job grid view</a>
												</li>
												<li>
													<a href="jobs-list-view.html">Job List view</a>
												</li>
												<li>
													<a href="jobs-detail.html">job detail</a>
												</li>
												<li>
													<a href="apply-job-form.html">apply job form</a>
												</li>
												<li>
													<a href="jobs-search.html">Search job</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">CANDIDATES</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
												<li>
													<a href="candidate-grid-view.html">candidate grid view</a>
												</li>
												<li>
													<a href="candidate-list-view.html">candidate list view</a>
												</li>
												<li>
													<a href="candidate-single-view.html">candidate single view</a>
												</li>
												<li>
													<a href="my-profile.html">my profile</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">EMPLOYERS</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
												<li>
													<a href="employers.html">employers</a>
												</li>
												<li>
													<a href="employer-detail.html">employer detail</a>
												</li>
												<li>
													<a href="submit-job.html">Submit Job</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">BLOG</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
												<li>
													<a href="blog.html">blog</a>
												</li>
												<li>
													<a href="blog-detail.html">blog detail</a>
												</li>
											</ul>
										</div>
									</div>
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">PAGES
										<span class="fa fa-angle-down"></span>
									</a>
									<div class="dropdown-menu animated fadeInDown">
										<div class="dropdown-inner">
											<ul class="list-unstyled">
												<li>
													<a href="about.html">About Us</a>
												</li>
												<li>
													<a href="login.html">Login</a>
												</li>
												<li>
													<a href="register.html">Register</a>
												</li>
												<li>
													<a href="contact.html">Contact us</a>
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
						<button type="button" class="btn btn-default btn-lg" onclick="location.href='login.html'">Login</button>
						<button type="button" class="btn btn-primary btn-lg" onclick="location.href='submit-job.html'">Submit Job</button>
					</div>
					<!-- button-login end here -->
				</div>
			</div>
		</div>
		<!-- header container end here -->
	</header>
<!-- header end here -->

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
								<a href="index.html">Home</a>
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
							<a href="#applied" data-toggle="tab" aria-expanded="false">APPLIED JOBS</a>
						</li>
						<li class="">
							<a href="#post" data-toggle="tab" aria-expanded="false">POST JOBS</a>
						</li>
						<li class="">
							<a href="#password" data-toggle="tab" aria-expanded="false">CHANGE PASSWORD</a>
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
										<label>FULL NAME 
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>John Doe</span>
									</div>	
									<div class="matter">
										<label>GENDER
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>Male</span>
									</div>	
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>DATE OF BIRTH
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>14 / march / 2017</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>LOCATION
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>Chandigarh</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>NATIONALITY
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>Indian</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>MOBILE NUMBER
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>(+91) 123 456 7890</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>HOME PHONE
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>0161 1234567	</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>PROFESSIONAL SKILLS
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>Adobe Photoshop, Corel Draw, Adobe Illustrator, PHP, Wordpress</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>EXPERIENCE
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>5 years experience in sit amet, pulvinar augue, Sed porttitor purus ac arcu scelerisque. </span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>EDUCATION
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>-----</span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<div class="matter">
										<label>MY ADDITIONALS INFORMATION
										<button type="submit" value="Submit" class="icon" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
										</label>
										<span>INTEREST : </span>
										<span>CAREER : </span>
										<span>ACHIVEMENTS : </span>
									</div>
								</div>
							</div>
						</fieldset>
						</form>
						</div>
					</div>
					<div class="tab-pane" id="applied">
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p2.jpg" alt="p2" title="p2"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p3.jpg" alt="p3" title="p3"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p4.jpg" alt="p4" title="p4"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p2.jpg" alt="p2" title="p2"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p3.jpg" alt="p3" title="p3"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p4.jpg" alt="p4" title="p4"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p2.jpg" alt="p2" title="p2"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p3.jpg" alt="p3" title="p3"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p4.jpg" alt="p4" title="p4"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
								<button type="button" class="btn btn-info" onclick="location.href='apply-job-form.html'">APPLY NOW</button>
							</div>
						</div>
							
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align:center">
							<ul class="pagination">
								<li>
									<a href="#" aria-label="Previous"><span aria-hidden="true" class="fa fa-angle-left"></span></a>
								</li>
								<li class="active">
									<a href="#"> 1</a> 
								</li>
								<li>
									<a href="#"> 2</a> 
								</li>
								<li>
									<a href="#">3</a>
								</li>
								<li>
									<a href="#"> 4</a> 
								</li>
								<li>
									<a href="#"> 5</a> 
								</li>
								<li>
									<a href="#" aria-label="Next"><span aria-hidden="true" class="fa fa-angle-right"></span></a>
								</li>
								<li>
									<a href="#" aria-label="Next"><span aria-hidden="true" class="fa fa-angle-double-right"></span></a>
								</li>
							</ul>
						</div>	
						
					</div>
					<div class="tab-pane" id="post">
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p2.jpg" alt="p2" title="p2"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p3.jpg" alt="p3" title="p3"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p4.jpg" alt="p4" title="p4"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p2.jpg" alt="p2" title="p2"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p3.jpg" alt="p3" title="p3"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p4.jpg" alt="p4" title="p4"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p2.jpg" alt="p2" title="p2"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p3.jpg" alt="p3" title="p3"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-3 col-xs-12">
							<div class="product-box profile">
								<div class="image">
									<a href="jobs.html">
										<img class="img-responsive" src="images/p4.jpg" alt="p4" title="p4"/>
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
								</div>		
								<div class="matter">
									<h1>IT Department Manager</h1>
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-bookmark" aria-hidden="true"></i> Full Time</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i> Chandigarh</a>
										</li>
									</ul>
									<p>There are many variations of passages of lorem Ipsum available [...]</p>
								</div>
								<button type="button" class="btn btn-info" onclick="location.href='jobs.html'">VIEW MORE</button>
							</div>
						</div>
							
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align:center">
							<ul class="pagination">
								<li>
									<a href="#" aria-label="Previous"><span aria-hidden="true" class="fa fa-angle-left"></span></a>
								</li>
								<li class="active">
									<a href="#"> 1</a> 
								</li>
								<li>
									<a href="#"> 2</a> 
								</li>
								<li>
									<a href="#">3</a>
								</li>
								<li>
									<a href="#"> 4</a> 
								</li>
								<li>
									<a href="#"> 5</a> 
								</li>
								<li>
									<a href="#" aria-label="Next"><span aria-hidden="true" class="fa fa-angle-right"></span></a>
								</li>
								<li>
									<a href="#" aria-label="Next"><span aria-hidden="true" class="fa fa-angle-double-right"></span></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="tab-pane" id="password">
						<div class="col-sm-offset-3 col-md-6 col-sm-6  col-xs-12">
							<form class="form-horizontal password" method=	"post">
								<fieldset>
									<div class="form-group">
										<div class="col-sm-12">
											<label>OLD PASSWORD</label>
											<input class="form-control" id="old-password" value="" name="old-password" required="" type="text">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12">
											<label>ENTER NEW PASSWORD</label>
											<input class="form-control" id="new-password" value="" name="new-password" required="" type="text">
										</div>
									</div>
								
									<div class="form-group">
										<div class="col-sm-12">
											<label>CONFIRM PASSWORD
											</label>
											<input class="form-control" id="confirm-password" value="" name="confirm-password" required="" type="text">
										</div>
									</div>
								
									<div class="button">
										<button type="submit" value="Submit" class="btn btn-primary btnus">SAVE</button>
									</div>
								</fieldset>
							</form>
						</div>
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
							<a href="about.html"><i class="fa fa-caret-right" aria-hidden="true"></i>About Us</a>
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
	<div class="powered">
		<div class="container">
			<p>Copyright &#169; 2017. All Rights Reserved</p>
		</div>
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