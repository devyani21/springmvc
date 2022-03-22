<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/customer-register.css' />" />
</head>

<body>
	<div class="wrapper">
	<%@ include file="../views/headers/header2.jsp" %>
	
	<%@ include file="../views/modals/loginModal.jsp" %>
    <%@ include file="../views/modals/forgotPasswordModal.jsp" %>		
	<section>
			<div class="container mt-5">
				<div class="row">
					<div class="col-lg col Contact-us ">Create an Account</div>
				</div>
				<div class="row">
					<div class="col-lg col">
						<img
							src="<c:url value='/resources/img/contact/forma-1-copy-5.png' />"
							alt="" class="Forma-1-copy-5">
					</div>
				</div>
			</div>
		</section>
		<!-- Modal -->
		<div class="modal fade" id="login" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">Login to
							your account</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form:form modelAttribute="login" action="loginProcess"
							method="post">
							<div class="input-group mb-3">
								<input type="email" class="form-control" placeholder="Email"
									aria-label="Recipient's username"
									aria-describedby="basic-addon2" name="email"> <span
									class="input-group-text" id="email"><i
									class="fa fa-user" aria-hidden="true"></i></span>

							</div>

							<div class="input-group mb-3">
								<input id="passwordshow" type="password" class="form-control"
									placeholder="Password" aria-label="Recipient's username"
									aria-describedby="basic-addon2" name="password"> <span
									class="input-group-text" id="password"><i
									class="fa fa-lock" aria-hidden="true"></i></span>
							</div>
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Remember me</label>
							</div>
							<div class="d-flex justify-content-center mb-3">
								<button type="submit"
									class=" form-control btn btn-success btn-lg">Submit</button>
							</div>
							<div id="forgotpassword" class="d-flex justify-content-center">
								<a href="#" data-bs-toggle="modal"
									data-bs-target="#forgot-password">Forgot Password?</a>
							</div>
							<div class="d-flex justify-content-center mb-5">
								<span>Don't have an account? </span> <span id="forgotpassword"
									class="d-flex justify-content-center"> <a
									href="customer-register">Create an account</a>
								</span>
							</div>
						</form:form>
					</div>
					<!-- <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Understood</button>
                        </div> -->
				</div>
			</div>
		</div>

		<section class="vh-100 gradient-custom">
			<div class="container h-100">
				<div class="row justify-content-center align-items-center h-100">
					<div class="col-12 col-lg-9 col-xl-7">
						<div class="card shadow-2-strong card-registration">
							<div class="card-body p-4 p-md-5">
								<h6>${ error_msg }</h6>
								<!-- <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Register here</h3> -->
								<form:form modelAttribute="user" action="registerProcess"
									method="post" name="registration">
									<div class="row">
										<div class="col-md-6 mb-4">

											<div class="form-outline">
												<input type="text" id="firstname"
													class="form-control form-control-lg" placeholder="FirstName"
													name="first_name" /> <label class="form-label"
													for="firstname"></label>
											</div>

										</div>
										<div class="col-md-6 mb-4">

											<div class="form-outline">
												<input type="text" id="lastname"
													class="form-control form-control-lg"
													placeholder="LastName" name="last_name" />
												<label class="form-label" for="lastname"></label>
											</div>

										</div>
									</div>

									<div class="row">
										<div class="col-md-6 mb-4 pb-2 mt-2">

											<div class="input-group">
												<span class="input-group-text" id="email">+49</span> <input
													type="tel" id="phoneNumber"
													class="form-control form-control-lg"
													placeholder="Phone Number" name="mobile" /> <label
													class="form-label" for="phoneNumber"></label>
											</div>

										</div>
										<div class="col-md-6 mb-4 pb-2 mt-2">

											<div class="form-outline">
												<input type="email" id="emailAddress"
													class="form-control form-control-lg" placeholder="Email"
													name="email" /> <label class="form-label"
													for="emailAddress"></label>
											</div>

										</div>

									</div>

									<div class="row">
										<div class="col-md-6 mb-4">

											<div class="form-outline">
												<input type="password" id="mainpassword"
													class="form-control form-control-lg" placeholder="Password"
													name="password" /> <label class="form-label"
													for="password"></label>
											</div>

										</div>
										<div class="col-md-6 mb-4">

											<div class="form-outline">
												<input type="password" id="confirmpassword"
													class="form-control form-control-lg"
													placeholder="Confirm Password" name="confirm_password" />
												<label class="form-label" for="confirmpassword"></label>
											</div>

										</div>
									</div>

									<div class="mb-4 mt-4 pt-1">
										<input id="submitbtn" class="btn btn-primary btn-lg"
											type="submit" value="Submit" />
									</div>

								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section>
			<div class="container">
				<div class="row">
					<div class="col-lg col test7">
						<div class="GET-OUR-NEWSLETTER">GET OUR NEWSLETTER</div>
					</div>
				</div>
				<div class="row">
					<div class=" col-lg-6 col test8">
						<div class="Ellipse-649" onclick="topFunction()"
							style="cursor: pointer;">
							<img src="<c:url value='/resources/img/index/forma-1(1).png' />"
								class="Forma-1-new">
						</div>
						<div class="Rounded-Rectangle-649">
							<div class="Your-Email">Your Email</div>
						</div>
					</div>
					<div class="col-lg-6 col test8">
						<div class="Rounded-Rectangle-649-copy">
							<div class="Submit">Submit</div>
						</div>
						<img src="<c:url value='/resources/img/index/layer-598.png' />"
							class="Layer-598">
					</div>
				</div>
			</div>
		</section>

		<%@include file="../views/footers/footer2.jsp" %>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="<c:url value='/resources/js/common.js' />"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/formvalidate.js' />"></script>
</body>

</html>