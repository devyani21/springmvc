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
<title>Book Service</title>
<c:set var="usertypeid" value="${userinfo.user_type_id }" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/book-service.css' />">
<c:if test="${userinfo.user_type_id == 1 }">
	<link href="<c:url value="/resources/css/header4.css" />"
		rel="stylesheet" />
</c:if>

</head>

<body>
	<div class="wrapper">
		<c:if test="${usertypeid  == 1}">
			<%@include file="header4.jsp"%>
		</c:if>
		<c:if test="${usertypeid == null }">
			<%@include file="header2.jsp"%>
		</c:if>

		<!--Login  Modal -->
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

		<!-- Forgot Password Modal -->
		<div class="modal fade" id="forgot-password" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">Forgot
							Password</h5>
						<button id="modalclosebutton" type="button" class="btn-close"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form:form modelAttribute="user" action="forgotPassword"
							method="post" id="forgotpasswordform">
							<span id="message" class="text-danger"><h6></h6></span>
							<div class="input-group mb-3">
								<input id="email" type="email" class="form-control"
									placeholder="Email" aria-label="Recipient's username"
									aria-describedby="basic-addon2" name="email"> <span
									class="input-group-text"><i class="fa fa-user"
									aria-hidden="true"></i></span>

							</div>

							<div class="d-flex justify-content-center mb-3">
								<button type="submit"
									class=" form-control btn btn-success btn-lg">Send</button>
							</div>
							<div id="forgotpassword" class="d-flex justify-content-center">
								<a href="#" data-bs-toggle="modal" data-bs-target="#login">Login
									Now</a>
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
		
		<!-- Success Modal -->
            <div class="modal fade" id="success" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header" style="border: none;">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="success">
                                <div style="text-align: center;">
                                <i class="fa fa-check-circle" style="font-size:65px;color:rgb(7, 167, 7)"></i>
                            </div>
                            <div style="text-align: center;">
                                <h5>Booking has been successfully submited</h5>
                            </div>
                            <div style="text-align: center;"><h6>Service Booking Id is <span id="serviceid"></span></h6></div>
                                <div class="d-flex justify-content-center mb-3" id="okbutton">
                                    <button type="submit" class=" form-control btn btn-success btn-lg">OK</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Error Modal -->
            <div class="modal fade" id="error" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header" style="border: none;">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="success">
                                <div style="text-align: center;">
                                <i class="fa fa-warning" style="font-size:65px;color:red"></i>
                            </div>
                            <div style="text-align: center;">
                                <h5>Please try again after some time</h5>
                            </div>
                            <div style="text-align: center;"><h6 class="text-danger">Some error occured!</h6></div>
                                <div class="d-flex justify-content-center mb-3" id="okbutton">
                                    <button type="submit" class=" form-control btn btn-success btn-lg">OK</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            
		<div id="banner6"></div>
		<section>
			<div class="container">
				<div class="row">
					<div class="col-lg col Contact-us ">Setup your Cleaning
						Service</div>
				</div>
				<div class="row">
					<div class="col-lg col">
						<img
							src="<c:url value='/resources/img/book-service/forma-1-copy-5.png' />"
							alt="" class="Forma-1-copy-5">
					</div>
				</div>
			</div>
		</section>

		<section>
			<div class="container w-25 right">
				<div class="p-2 me-3 paymentsummary">Payment Summary</div>
				<div class="p-2 d-flex">
					<div class="col-8" id="servicedatetime">
						<span id="servicestartdatevalue"></span> @ <span
							id="servicestarttimevalue"></span>
						<!-- <div class="col-8">1 bed, 1 bath</div> -->
					</div>
					<!-- <div class="ms-auto">$186.76</div> -->
				</div>
				<div class="p-2 d-flex">
					<div class="col">
						<strong>Duration</strong>
						<div id="showbasic">
							Basic <span id="basicservicehoursvalue" style="float: right;"></span>
						</div>
						<div id="extras">
							<strong>Extras</strong>
							<div id="extraservice1">
								Inside Cabinets(Extra) <span style="float: right;">30
									Mins</span>
							</div>
							<div id="extraservice2">
								Inside Fridge(Extra) <span style="float: right;">30 Mins</span>
							</div>
							<div id="extraservice3">
								Inside Oven(Extra) <span style="float: right;">30 Mins</span>
							</div>
							<div id="extraservice4">
								Laundary Wash & Dry(Extra) <span style="float: right;">30
									Mins</span>
							</div>
							<div id="extraservice5">
								Interior Windows(Extra) <span style="float: right;">30
									Mins</span>
							</div>
						</div>
						<hr>
					</div>
				</div>
				<div class="p-2 d-flex">
					<div class="col">
						<strong>Total Service Time</strong> <span style="float: right;"
							id="totalservicetimevalue"></span>
					</div>
				</div>
				<div class="border-top"></div>
				<div class="px-2 mx-2"></div>
				<div class="p-2 d-flex pt-2">
					<div class="col">
						<strong>Per Cleaning</strong> <span style="float: right;"><strong>$50.00</strong></span>
						<!--  <div class="col">
							Discount <span style="float: right;">-$27</span>
						</div>-->
					</div>
				</div>
				<div class="border-top"></div>
				<div class="p-2 d-flex">
					<div class="col">
						<span class="totalpayment">Total Payment</span> <span
							style="float: right;" class="totalprice" id="totalpaymentvalue"></span>
					</div>
				</div>
			</div>
			<div class="container w-50 custom-container">
				<div class="row">
					<nav>
						<div class="nav nav-tabs nav-justified mb-3 nav-pills nav-fill"
							id="nav-tab" role="tablist">
							<a class="nav-link active For-Customer"
								id="nav-setup-service-tab" data-bs-toggle="tab"
								href="#setup-service" role="tab" aria-controls="setup-service"
								aria-selected="true">Setup Service</a> <a
								class="nav-link For-Customer" id="nav-schedule-tab"
								data-bs-toggle="tab" href="#schedule" role="tab"
								aria-controls="schedule" aria-selected="false" disabled>Schedule
								& Plan</a> <a class="nav-link For-Customer" id="nav-details-tab"
								data-bs-toggle="tab" href="#details" role="tab"
								aria-controls="details" aria-selected="false" disabled>Your
								Details</a> <a class="nav-link For-Customer" id="nav-payment-tab"
								data-bs-toggle="tab" href="#payment" role="tab"
								aria-controls="payment" aria-selected="false" disabled>Make
								Payment</a>
						</div>
					</nav>

					<div class="tab-content" id="ex-2-content">
						<form id="mainservicerequestform" method="post" action="add-new-service-request"></form>

						<!--  Setup Service Tab -->
						<div class="tab-pane fade show active" id="setup-service"
							role="tabpanel" aria-labelledby="nav-setup-service-tab">

							<div class="row">
								<span class="postalcode"><strong>Enter your
										Postal Code</strong></span>

								<form class="d-flex mt-2" action="setup-service"
									id="zipcodeform" method="post">
									<input class="form-control me-2 postalform" type="search"
										placeholder="Search" aria-label="Search" name="zip_code_value"
										id="zipcodevalue" form="mainservicerequestform" required>


									<button class="btn btn-outline-success" type="submit"
										id="zipcodebutton">Check Availability</button>
									<br>

								</form>
								<div class="text-danger mb-1" style="width: 30%;">
									<h6 id="msg"></h6>
								</div>

							</div>

						</div>

						<!-- Schedule & Plan Tab -->
						<div class="tab-pane fade" id="schedule" role="tabpanel"
							aria-labelledby="nav-schedule-tab">
							<form action="details" method="post" id="scheduleserviceform">
								<div class="row">
									<div class="col-lg-6 col bottom-margin">
										<div class="select-no-of-rooms-and-bath">When do you
											need the Cleaner?</div>
										<div id="msg"></div>
										<div>
											<input name="service_start_date" type="date"
												class="datepicker" id="servicestartdate"
												style="width: 180px;" required form="mainservicerequestform" />
											<select name="service_start_time"
												class="form-select user-name-select time"
												aria-label="Default select example" id="servicestarttime"
												form="mainservicerequestform">
												<option value="12:00 PM" selected>12:00 PM</option>
												<option value="11:00 AM">11:00 AM</option>
												<option value="1:00 PM">1:00 PM</option>
												<option value="2:00 PM">2:00 PM</option>
												<option value="3:00 PM">3:00 PM</option>
											</select>
										</div>
										<div class="border-top"></div>
									</div>
									<div class="col-lg-6 col bottom-margin">
										<div class="select-no-of-rooms-and-bath">How long do you
											need your cleaner to stay?</div>
										<div>
											<select name="service_hours"
												class="form-select user-name-select time"
												aria-label="Default select example" id="servicehours"
												form="mainservicerequestform">
												<option value="3" selected>3 Hrs</option>
												<option value="3.5">3.5 Hrs</option>
												<option value="4">4 Hrs</option>
												<option value="4.5">4.5 Hrs</option>
												<option value="5">5 Hrs</option>
												<option value="5.5">5.5 Hrs</option>
												<option value="6">6 Hrs</option>
												<option value="6.5">6.5 Hrs</option>
												<option value="7">7 Hrs</option>
												<option value="7.5">7.5 Hrs</option>
											</select>
										</div>
										<div class="border-top"></div>
									</div>
								</div>
								<div class="row">
									<div class="select-no-of-rooms-and-bath">Extra Services</div>
								</div>
								<div class="row test">
									<div class="col-lg-equal col test">
										<div class="mydiv">
											<input form="mainservicerequestform" id="insideCabinets"
												type="checkbox" name="insidecabinets" value="1" /> <label
												for="insideCabinets" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-1.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Inside cabinets</div>
										<div class="-minutes">30 minutes</div>

									</div>
									<div class="col-lg-equal col">
										<div class="mydiv">
											<input form="mainservicerequestform" id="insideFridge"
												type="checkbox" name="insidefridge" value="1" /> <label
												for="insideFridge" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-2.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Inside Fridge</div>
										<div class="-minutes">30 minutes</div>
									</div>
									<div class="col-lg-equal col">
										<div class="mydiv">
											<input form="mainservicerequestform" id="insideOven"
												type="checkbox" name="insideoven" value="1" /> <label
												for="insideOven" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-3.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Inside Oven</div>
										<div class="-minutes">30 minutes</div>
									</div>
									<div class="col-lg-equal col">
										<div class="mydiv">
											<input form="mainservicerequestform" id="laundary"
												type="checkbox" name="laundary" value="1" /> <label
												for="laundary" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-4.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Laundary Wash & Dry</div>
										<div class="-minutes">30 minutes</div>
									</div>
									<div class="col-lg-equal col">
										<div class="mydiv">
											<input form="mainservicerequestform" id="interiorWindows"
												type="checkbox" name="interiorwindows" value="1" /> <label
												for="interiorWindows" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-5.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Interior Windows</div>
										<div class="-minutes">30 minutes</div>
									</div>
									<hr>
								</div>
								<div class="row bottom-margin2">
									<div>
										<div class="mb-3">
											<label for="comments" class="form-label">Comments</label>
											<textarea class="form-control" id="comments" rows="3"
												name="comments" form="mainservicerequestform"></textarea>
										</div>
										<div class="form-check mb-3">
											<input class="form-check-input" type="checkbox" value="1"
												id="haspets" name="has_pets" form="mainservicerequestform">
											<label class="form-check-label" for="haspets"> I have
												pets at home </label>
										</div>
										<input type="hidden" id="totalservicetime"
											name="total_service_time" form="mainservicerequestform" /> <input
											type="hidden" id="extrahours" name="extra_hours"
											form="mainservicerequestform" /> <input type="hidden"
											id="totalcost" name="total_cost"
											form="mainservicerequestform" />
										<div class="border-top"></div>
									</div>

									<div class="mt-3">
										<button class="btn btn-outline-success" type="submit"
											style="float: right;" id="scheduleandplanformbutton">Continue</button>
									</div>
								</div>
							</form>
						</div>

						<!-- Your Details Tab -->
						<div class="tab-pane fade" id="details" role="tabpanel"
							aria-labelledby="nav-details-tab">
							<div class="row">
								<span class="contactdetails">Enter your contact details,
									so we can serve you in a better way!</span>
							</div>
							
							<form id="servicerequestaddressform" method="post" action="service-request-address">
							<div id="showadd" class="table-responsive  mt-2 mb-2 p-2">
								<table class="table">
									<thead>
										<tr>
											<th></th>
											<th></th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										
									</tbody>
								</table>
							</div>
							</form>
							
							<div class="mb-4 mt-3">

								<form id="useraddressform" class="custom-form mb-4"
									action="user-address" method="post">

									<div class="row mt-2">
										<div class="col-md-6">

											<div class="form-outline custom-address-form"
												style="float: right;">
												<label class="form-label" for="addressline1">Street
													Name</label> <input name="address_line1" type="text"
													id="addressline1" class="form-control form-control-lg "
													placeholder="Street Name" />

											</div>

										</div>
										<div class="col-md-6">

											<div class="form-outline">
												<label class="form-label" for="addressline2">House
													No</label> <input type="text" id="addressline2"
													name="address_line2"
													class="form-control form-control-lg custom-address-form"
													placeholder="House No" />

											</div>

										</div>
									</div>

									<div class="row">
										<div class="col-md-6">

											<div class="form-outline custom-address-form"
												style="float: right;">
												<label class="form-label" for="postalcode">Postal
													Code</label> <input type="text" id="postalcode" name="postal_code"
													class="form-control form-control-lg "
													placeholder="Postal Code" />

											</div>

										</div>

										<div class="col-md-6">

											<div class="form-outline">
												<label class="form-label" for="city">City</label> <input
													type="text" id="city" name="city"
													class="form-control form-control-lg custom-address-form"
													placeholder="City" />

											</div>

										</div>

									</div>

									<div class="row">
										<div class="col-md-6 mt-2 ml-5" style="margin-left: 77px;">
											<label class="form-label" for="mobile">Phone No</label>
											<div class="input-group">

												<span class="input-group-text">+49</span> <input type="tel"
													id="mobile" name="mobile"
													class="form-control form-control-lg phone"
													placeholder="Phone Number" />

											</div>
											<!--<input type="hidden" id="userid" name="user_id"
												value="${userinfo.user_id }" /> <input type="hidden"
												id="useremail" name="email" value="${userinfo.email }" /> <input
												type="hidden" id="type" name="type"
												value="${userinfo.user_type_id }" />-->
										</div>
									</div>

									<div class="mb-4 mt-4" style="margin-left: 77px;">
										<input class="btn btn-primary btn-lg" type="submit"
											value="Submit" id="useraddressformsubmit"/> <input
											class="btn btn-primary btn-lg btn-cancel" type="submit"
											value="cancel" id="useraddressformcancel" />
									</div>

								</form>
								<button class="btn btn-outline-success add-new-address mb-3"
									id="addaddress" onclick="showform()">+ Add New Address
								</button>
							</div>
							<div class="mt-3">
								<button class="btn btn-outline-success" type="submit"
									style="float: right;" id="servicerequestaddressbutton" onClick='$("#servicerequestaddressform").submit();'>Continue</button>
							</div>
						</div>

						<!-- Payment Tab -->
						<div class="tab-pane fade" id="payment" role="tabpanel"
							aria-labelledby="nav-payment-tab">
							<div class="mt-3">
								<div class="mt-3">
								<button class="btn btn-outline-success" type="submit"
									style="float: right;" id="mainservicerequestformbutton" onClick='$("#mainservicerequestform").submit();'>Complete Booking</button>
							</div>
							</div>

						</div>
					</div>
				</div>
			</div>
	</div>

	</section>


	<section>
		<div class="container" style="margin-top: 50px;">
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

	<%@include file="footer2.jsp"%>

	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script> -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/common.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/book-service.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/common.js' />"></script>

	<script type="text/javascript">
		function showform() {
			var element = document.getElementById("useraddressform");
			element.classList.toggle("showform");
		}
	</script>

	<script type="text/javascript">
		function fun() {
			$("#servicerequestformbutton").on("click", function() {
				$("#servicerequestform").submit();
			});
		}
	</script>

	<script type="text/javascript">
		$(document).ready(
				function() {
					var date = new Date();
					var year = date.getFullYear();
					var month = ("0" + (date.getMonth() + 1)).slice(-2);
					var todayDate = ("0" + date.getDate()).slice(-2);
					var datePattern = year + '-' + month + '-' + todayDate;
					$("#servicestartdate").attr('min', datePattern);
					console.log(datePattern);
					$("#servicestartdate").val(datePattern);
					var newdate = datePattern.slice(8, 10) + "/"
							+ datePattern.slice(5, 7) + "/"
							+ datePattern.slice(0, 4);
					console.log(newdate);
					$("#servicestartdatevalue").html(newdate);

					document.getElementById('servicestartdate')
							.addEventListener(
									'change',
									function() {
										newdate = (this.value).slice(8, 10)
												+ "/"
												+ (this.value).slice(5, 7)
												+ "/"
												+ (this.value).slice(0, 4);
										var newdatevalue = (this.value).slice(
												0, 4)
												+ "-"
												+ (this.value).slice(5, 7)
												+ "-"
												+ (this.value).slice(8, 10);
										$("#servicestartdatevalue").html(
												newdate);
										$("#servicedatetime").show();
										$("#servicestartdate")
												.val(newdatevalue);
									});

					console.log($("select#servicestarttime").val());
					$("#servicestarttimevalue").html(servicestarttime.value);

					$("select#servicestarttime").change(function() {
						$("#servicestarttimevalue").html(this.value);
					})
				});
	</script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var newbasictime = $("#servicehours").val();
							console.log("newbasictime is " + newbasictime);
							var totalservicetime = newbasictime;
							var afterchange = $("#servicehours").val();
							var totalpayment = $("#totalpaymentvalue");
							var checkedbox = 0;

							$("#basicservicehoursvalue").html(
									totalservicetime + " Hrs");
							$("#totalservicetimevalue").html(
									totalservicetime + " Hrs");
							totalpayment.html("$" + totalservicetime * 50
									+ ".00");

							$("#extrahours").val(checkedbox);
							$("#totalcost").val(totalservicetime * 50);

							$("#servicehours").on(
									"change",
									function() {
										newbasictime = parseFloat($(
												"#servicehours").val());
										console.log(newbasictime);
										console.log(totalservicetime
												+ " before select");

										console.log(afterchange
												+ " afterchange value");

										totalservicetime = totalservicetime
												- afterchange;
										console.log(totalservicetime
												+ " after minus");

										totalservicetime = totalservicetime
												+ newbasictime;
										$("#basicservicehoursvalue").html(
												newbasictime + " Hrs");
										$("#totalservicetimevalue").html(
												totalservicetime + " Hrs");
										afterchange = $("#servicehours").val();

										console.log(afterchange
												+ "   after select change");
										console.log(totalservicetime
												+ "  inside select");

										totalpayment
												.html("$" + totalservicetime
														* 50 + ".00");
										$("#totalcost").val(
												totalservicetime * 50);

									})

							$("#insideCabinets")
									.change(
											function() {
												if (this.checked) {
													$("#extraservice1").show();
													totalservicetime = ((totalservicetime * 60) + 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox + 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												} else if (!this.checked) {
													$("#extraservice1").hide();
													totalservicetime = ((totalservicetime * 60) - 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox - 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												}
											});

							$("#insideFridge")
									.change(
											function() {
												if (this.checked) {
													$("#extraservice2").show();
													totalservicetime = ((totalservicetime * 60) + 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox + 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												} else if (!this.checked) {
													$("#extraservice2").hide();
													totalservicetime = ((totalservicetime * 60) - 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox - 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												}
											});

							$("#insideOven")
									.change(
											function() {
												if (this.checked) {
													$("#extraservice3").show();
													totalservicetime = ((totalservicetime * 60) + 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox + 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												} else if (!this.checked) {
													$("#extraservice3").hide();
													totalservicetime = ((totalservicetime * 60) - 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox - 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												}
											});

							$("#laundary")
									.change(
											function() {
												if (this.checked) {
													$("#extraservice4").show();
													totalservicetime = ((totalservicetime * 60) + 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox + 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												} else if (!this.checked) {
													$("#extraservice4").hide();
													totalservicetime = ((totalservicetime * 60) - 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox - 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												}
											});

							$("#interiorWindows")
									.change(
											function() {
												if (this.checked) {
													$("#extraservice5").show();
													totalservicetime = ((totalservicetime * 60) + 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox + 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												} else if (!this.checked) {
													$("#extraservice5").hide();
													totalservicetime = ((totalservicetime * 60) - 30) / 60;
													$("#totalservicetimevalue")
															.html(
																	totalservicetime
																			+ " Hrs");
													checkedbox = checkedbox - 0.5;
													$("#extrahours").val(
															checkedbox);
													console
															.log($(
																	"#extrahours")
																	.val());
													totalpayment.html("$"
															+ totalservicetime
															* 50 + ".00");
													$("#totalcost")
															.val(
																	totalservicetime * 50);
												}
											});

						})
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#zipcodeform').on('submit', function(event) {
				event.preventDefault();
				searchpincode();
			});
		});

		function searchpincode() {
			var search = {};
			search["zip_code_value"] = $("#zipcodevalue").val();
			console.log(search);
			$
					.ajax({
						url : "setup-service",
						type : "POST",
						data : $("#zipcodevalue").val(),
						success : function(data, textStatus, jqXHR) {
							console.log(data);
							console.log("Success...");
							if (data == "true") {
								$("#nav-schedule-tab").prop("disabled", false);
								document.getElementById("nav-schedule-tab")
										.click();
							} else {
								$("#msg")
										.html(
												"We are not providing service in this area.We'll notify you if any helper would start working near your area")
							}
						},
						error : function(e) {
							console.log(data);
							console.log("error...");
						}
					})

		}
	</script>
	<script type="text/javascript">
		function thirdtab() {
			$.ajax({
	    		type:"GET",
	    		url:"/helperland_springmvc/showaddress",
	    		contentType:"application/json",
	    		success:function(data, textStatus, jqXHR){
	    			var result = "<thead><tr><th></th><th></th><th></th></tr></thead>"
	    				result += "<tbody>";
	    				$.each(data, function(k, v) {
	    					
	    					//console.log(v.state);
	    					//document.getElementById("showadd").innerHTML = document.getElementById("showadd").innerHTML + v.addressLine1;
	    					result += '<tr class="border border-2 rounded-2">';
	    					result += "<td>";
	    					result +='<div class="form-check"><input form="mainservicerequestform" required class="form-check-input position-static address_id" type="radio" name="address_id" id="address_id" value='+v.address_id+' aria-label="..."></div>';
	    					result += "</td>";
	    					result += "<td>";
	    					result += "</td>";
	    					result += "<td>";
	    					result += '<div class="row"><span><strong>Address:  </strong>'+v.address_line1+', '+v.address_line2+'</span> <span><strong>Phone number:  </strong>'+v.mobile+'</span></div>';
	    					result += "</td>";
	    					result += "</tr>";
	    				});
	    				console.log("SUCCESS: ", data);
	    				result += "</tbody>";
	    				$("#showadd").html(result);
	    				
	    		},
	    		error: function(e){
	    			console.log("ERROR: ", e);
	    		},
	    		done: function(e){
	    			console.log("Done");
	    		}
	    	});
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#scheduleserviceform').on('submit', function(event) {
				event.preventDefault();
				console.log("setup-service...");

				$.ajax({
					type : "POST",
					url : "details",
					data : $("#scheduleserviceform").serialize(),
					success : function(data, textStatus, jqXHR) {
						console.log("success..")
						console.log(data);
						if (data == "true") {
							$("#nav-details-tab").prop("disabled", false);
							document.getElementById("nav-details-tab").click();
							thirdtab();
						} else {
							$('#login').modal('show');
						}
					},
					error : function(data) {
						console.log(data);
					}
				})
			});
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#useraddressform").on('submit', function(event) {
				event.preventDefault();
				console.log("user address form...");
				console.log($(this).serialize());

				$.ajax({
					type : "POST",
					url : "user-address",
					data : $(this).serialize(),
					success : function(data, textStatus, jqXHR) {
						console.log(data);
						if(data == "true"){
							document.getElementById('useraddressform').reset();
							showform();
							thirdtab();
						}
					},
					error : function(data) {
						console.log(data);
					}
				})
			})
		})
	</script>
	
	<script type="text/javascript">
	$(document).ready(function() {
		$("#servicerequestaddressform").on('submit', function(event) {
			event.preventDefault();
			console.log("service request address form...");
			console.log($("#address_id:checked").val());

			$.ajax({
				type : "POST",
				contentType: "application/json",
				url : "service-request-address",
				data : $("#address_id:checked").val(),
				success : function(data, textStatus, jqXHR) {
					console.log(data);
					if(data == "true"){
						$("#nav-payment-tab").prop("disabled", false);
						document.getElementById("nav-payment-tab").click();
					}
				},
				error : function(data) {
					console.log(data);
				}
			})
		})
	})
	</script>

	<script type="text/javascript">
		$(document).ready(function(){
			$("#mainservicerequestform").on('submit', function(event){
				event.preventDefault();
				$(document).find('input[type=checkbox]:checked').val(1);
				$(document).find('input[type=checkbox]:not(:checked)').val(0);
				console.log("main service request form...");
				console.log($(this).serialize());
				
				$.ajax({
					type: "POST",
					url: "add-new-service-request",
					data: $(this).serialize(),
					success: function(data, textStatus, jqXHR){
						console.log(data);
						$('#success').modal('show');
						$('#serviceid').html(data);
					},
					error: function(data){
						console.log(data);
						$('#error').modal('show');
					}
				})
			})
		})
	
	</script>

	<script type="text/javascript">
		$("#nav-setup-service-tab").on("click", function() {
			if ($("#nav-setup-service-tab").hasClass("active")) {
				$("#nav-setup-service-tab").addClass("is_visited");

				$("#nav-schedule-tab").removeClass("is_visisted")
				$("#nav-details-tab").removeClass("is_visited");
				$("#nav-payment-tab").removeClass("is_visited");
				$("#nav-schedule-tab").prop('disabled', true);
				$("#nav-details-tab").prop('disabled', true);
				$("#nav-payment-tab").prop('disabled', true);
			}
		});

		$("#nav-schedule-tab").on("click", function() {
			if ($("#nav-schedule-tab").hasClass("active")) {
				$("#nav-schedule-tab").addClass("is_visited");
				$("#nav-setup-service-tab").addClass("is_visited");

				$("#nav-details-tab").removeClass("is_visited");
				$("#nav-payment-tab").removeClass("is_visited")
				$("#nav-details-tab").prop('disabled', true);
				$("#nav-payment-tab").prop('disabled', true);
			}
		});

		$("#nav-details-tab").on("click", function() {
			if ($("#nav-details-tab").hasClass("active")) {
				$("#nav-details-tab").addClass("is_visited")
				$("#nav-setup-service-tab").addClass("is_visited");
				$("#nav-schedule-tab").addClass("is_visited");

				$("#nav-payment-tab").removeClass("is_visited")

				$("#nav-payment-tab").prop('disabled', true);
			}
		});

		$("#nav-payment-tab").on("click", function() {
			if ($("#nav-payment-tab").hasClass("active")) {

				$("#nav-payment-tab").addClass("is_visited")
				$("#nav-setup-service-tab").addClass("is_visited");
				$("#nav-schedule-tab").addClass("is_visited");
				$("#nav-details-tab").addClass("is_visited");

			}
		});
	</script>

</body>

</html>