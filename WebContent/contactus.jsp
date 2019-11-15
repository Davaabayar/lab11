<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Contact us</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<style>
body {
	padding: 0;
	margin: 0;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.container {
	width: 1280px;
}

h1 {
	margin-top: 40px;
}

label, input[type="text"] {
	display: block;
	width: 100%;
}

input[type="text"], input[type="password"], select {
	font-size: 16px;
	width: 100%;
	padding: 12px 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

label {
	margin: 15px 0 5px 0;
}

.mt40 {
	margin-top: 40px;
}

section h2 {
	background: #007bff;
	color: #fff;
	padding: 15px;
	border-radius: 8px 8px 0 0;
	font-size: 20px;
	margin: 0;
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
					<li class="nav-item active"><a class="nav-link" href="home">Home
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
		<section>
			<h1>Customer contact form</h1>
			${errorMsg}
			<%
				Integer hitsCount = (Integer) application.getAttribute("hitCounter");
				if (hitsCount == null || hitsCount == 0) {
					hitsCount = 1;
				} else {
					hitsCount += 1;
				}
				application.setAttribute("hitCounter", hitsCount);
			%>
			<form name="contactForm" method="post" action="process">
				<div class="row">
					<div class="col-md-12">
						<label for="name">*Name</label>
						<c:choose>
							<c:when test="${param.name!=null}">
								<input type="text" name="name" id="name" value="${param.name}">
							</c:when>
							<c:otherwise>
								<input type="text" name="name" id="name" value="Otherwise">
							</c:otherwise>
						</c:choose>
					</div>
					<div class="col-md-12">
						<label for="gender">*Gender</label>
						<c:choose>
							<c:when test="${param.gender=='male'}">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input"
										id="defaultInline1" name="gender" value="male" checked>
									<label class="custom-control-label" for="defaultInline1">Male</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input"
										id="defaultInline2" name="gender" value="female"> <label
										class="custom-control-label" for="defaultInline2">Female</label>
								</div>
							</c:when>
							<c:when test="${param.gender=='female'}">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input"
										id="defaultInline1" name="gender" value="male"> <label
										class="custom-control-label" for="defaultInline1">Male</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input"
										id="defaultInline2" name="gender" value="female" checked>
									<label class="custom-control-label" for="defaultInline2">Female</label>
								</div>
							</c:when>
							<c:otherwise>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input"
										id="defaultInline1" name="gender" value="male"> <label
										class="custom-control-label" for="defaultInline1">Male</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" class="custom-control-input"
										id="defaultInline2" name="gender" value="female"> <label
										class="custom-control-label" for="defaultInline2">Female</label>
								</div>
							</c:otherwise>
						</c:choose>

					</div>
					<div class="col-md-12">
						<label for="category">*Category</label>
						<c:choose>
							<c:when test="${param.category=='Feedback'}">
								<select name="category">
									<option></option>
									<option value="Feedback" selected>Feedback</option>
									<option value="Inquiry">Inquiry</option>
									<option value="Complaint">Complaint</option>
								</select>
							</c:when>
							<c:when test="${param.category=='Inquiry'}">
								<select name="category">
									<option></option>
									<option value="Feedback">Feedback</option>
									<option value="Inquiry" selected>Inquiry</option>
									<option value="Complaint">Complaint</option>
								</select>
							</c:when>
							<c:when test="${param.category=='Complaint'}">
								<select name="category">
									<option></option>
									<option value="Feedback">Feedback</option>
									<option value="Inquiry">Inquiry</option>
									<option value="Complaint" selected>Complaint</option>
								</select>
							</c:when>
							<c:otherwise>
								<select name="category">
									<option></option>
									<option value="Feedback">Feedback</option>
									<option value="Inquiry">Inquiry</option>
									<option value="Complaint">Complaint</option>
								</select>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="col-md-12">
						<label for="messsage">*Message</label>
						<textarea class="form-control" id="message" rows="3"
							name="message"></textarea>
					</div>
				</div>
				<button id="submitBtn" type="submit"
					class="btn btn-lg btn-primary mt40">Submit</button>
			</form>
			<p class="mt-5">Hit count for this page: <%=hitsCount%></p>
			<p>Total hit count for the entiry web app: ${totalCount}</p>
		</section>
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
