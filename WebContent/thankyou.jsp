<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>CS427-Lesson 10</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	padding: 0;
	margin: 0;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	min-height: 100vh;
}

.container {
	width: 1280px;
}

footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>
	<header>
		<nav
			class="navbar navbar-expand-lg navbar-dark bg-primary primary-color">
			<a class="navbar-brand" href="#">CS427-WAP::Lab10</a>
			<div class="collapse navbar-collapse" id="basicExampleNav">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="index.html">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact</a>
					</li>
				</ul>
				<form class="form-inline">
					<div class="md-form my-0">
						<input class="form-control mr-sm-2" type="text"
							placeholder="Search" aria-label="Search">
					</div>
				</form>
			</div>
		</nav>
	</header>
	<div class="container">
		<div class="card mt-5">		 
		   <h2 class="card-header font-weight-light">Thank you! Your message has been recieved as follows:</h2>
		  	<div class="card-body">
			    <h4 class="card-title font-weight-light">Name: <%= request.getParameter("name") %></h4>
			    <p><span class="font-italic">Gender&nbsp;&nbsp;&nbsp;&nbsp;</span>:  <%= request.getParameter("gender") %></p>
			    <p><span class="font-italic">Category </span>:  <%= request.getParameter("category") %></p>
			    <p><span class="font-italic">Message&nbsp;&nbsp;</span>:  <%= request.getParameter("message") %></p>
			    <p>Please feel free to <a href="contactus" class="">Contact us</a> again.</p>
		  </div>
		</div>
		<p class="mt-3">Hit count for this page:${param.attr}</p>
	    <p>Total hit count for the entiry web app:4</p>
	</div>
	<footer class="bg-secondary text-white mt-4">
		<div class="container-fluid py-3">
			<div class="row">
				<div class="col-md-6">Davaabayar.B ::SC-WAP</div>
				<div class="col-md-6 text-right align-self-end">@November 2019</div>
			</div>
		</div>
	</footer>
</body>
</html>
