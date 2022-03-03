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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
  rel="stylesheet"
/> -->
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/book-service.css' />">

</head>

<body>
	<div class="wrapper">
		<%@include file="header2.jsp"%>
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
							Basic <span id="servicehoursvalue" style="float: right;"></span>
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
						<strong>Total Service Time</strong> <span style="float: right;">3.5
							Hrs</span>
					</div>
				</div>
				<div class="border-top"></div>
				<div class="px-2 mx-2"></div>
				<div class="p-2 d-flex pt-2">
					<div class="col">
						Per Cleaning <span style="float: right;">$87</span>
						<div class="col">
							Discount <span style="float: right;">-$27</span>
						</div>
					</div>
				</div>
				<div class="border-top"></div>
				<div class="p-2 d-flex">
					<div class="col">
						<span class="totalpayment">Total Payment</span> <span
							style="float: right;" class="totalprice">$50.00</span>
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
					<!--  Setup Service Tab -->
					<div class="tab-content" id="ex-2-content">
						<div class="tab-pane fade show active" id="setup-service"
							role="tabpanel" aria-labelledby="nav-setup-service-tab">

							<div class="row">
								<span class="postalcode"><strong>Enter your
										Postal Code</strong></span>

								<form:form class="d-flex mt-2" action="setup-service"
									id="zipcodeform" method="post">
									<input class="form-control me-2 postalform" type="search"
										placeholder="Search" aria-label="Search" name="zip_code_value"
										id="zipcodevalue">


									<button class="btn btn-outline-success" type="submit"
										id="zipcodebutton">Check Availability</button>
									<br>

								</form:form>
								<div class="text-danger mb-1" style="width: 30%;">
									<h6 id="msg"></h6>
								</div>

							</div>

						</div>

						<!-- Schedule & Plan Tab -->
						<div class="tab-pane fade" id="schedule" role="tabpanel"
							aria-labelledby="nav-schedule-tab">
							<form:form action="details" method="post"
								id="scheduleserviceform">
								<div class="row">
									<div class="col-lg-6 col bottom-margin">
										<div class="select-no-of-rooms-and-bath">When do you
											need the Cleaner?</div>
										<div id="msg"></div>
										<div>
											<input name="service_start_date" type="date"
												class="datepicker" id="servicestartdate"
												style="width: 180px;" required /> <select
												name="service_start_time"
												class="form-select user-name-select time"
												aria-label="Default select example" id="servicestarttime">
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
												aria-label="Default select example" id="servicehours">
												<option value="3" selected>3 Hrs</option>
												<option value="3.5">3.5 Hrs</option>
												<option value="4">4 Hrs</option>
												<option value="4">4.5 Hrs</option>
												<option value="5">5 Hrs</option>
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
										<div class="mydiv" >
											<input id="insideCabinets" type="checkbox"
												name="insidecabinets" /> <label for="insideCabinets" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-1.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Inside cabinets</div>
										<div class="-minutes">30 minutes</div>
										<!-- <div class="Ellipse-667" id="insideCabinets" style="cursor: pointer;">
											<img
												src="<c:url value='/resources/img/prices/shape-1.png' />"
												class="shape-1">
										</div>
										<div class="Inside-cabinets">Inside cabinets</div>
										<div class="-minutes">30 minutes</div>-->
									</div>
									<div class="col-lg-equal col">
										<div class="mydiv" >
											<input id="insideFridge" type="checkbox" name="insidefridge" />
											<label for="insideFridge" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-2.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Inside Fridge</div>
										<div class="-minutes">30 minutes</div>
										<!--  <div class="Ellipse-667" id="insideFridge"
											style="cursor: pointer;">
											<img
												src="<c:url value='/resources/img/prices/shape-2.png' />"
												class="shape-2">
										</div>
										<div class="Inside-cabinets">Inside Fridge</div>
										<div class="-minutes">30 minutes</div>-->
									</div>
									<div class="col-lg-equal col">
										<div class="mydiv" >
											<input id="insideOven" type="checkbox" name="insideoven" />
											<label for="insideOven" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-3.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Inside Oven</div>
										<div class="-minutes">30 minutes</div>
										<!-- <div class="Ellipse-667" id="insideOven"
											style="cursor: pointer;">
											<img
												src="<c:url value='/resources/img/prices/shape-3.png' />"
												class="shape-3">
										</div>
										<div class="Inside-cabinets">Inside Oven</div>
										<div class="-minutes">30 minutes</div>-->
									</div>
									<div class="col-lg-equal col">
										<div class="mydiv" >
											<input id="laundary" type="checkbox" name="laundary" /> <label
												for="laundary" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-4.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Laundary Wash & Dry</div>
										<div class="-minutes">30 minutes</div>
										<!--  <div class="Ellipse-667" id="laundary"
											style="cursor: pointer;">
											<img
												src="<c:url value='/resources/img/prices/shape-4.png' />"
												class="shape-4">
										</div>
										<div class="Inside-cabinets">Laundary Wash & Dry</div>
										<div class="-minutes">30 minutes</div>-->
									</div>
									<div class="col-lg-equal col">
										<div class="mydiv" >
											<input id="interiorWindows" type="checkbox"
												name="interiorwindows" /> <label for="interiorWindows" style="cursor: pointer;"><img
												src="<c:url value='/resources/img/prices/shape-5.png' />"
												class="shape-1"></label>
										</div>
										<div class="Inside-cabinets">Interior Windows</div>
										<div class="-minutes">30 minutes</div>
										<!-- <div class="Ellipse-667" id="interiorWindows"
											style="cursor: pointer;">
											<img
												src="<c:url value='/resources/img/prices/shape-5.png' />"
												class="shape-5">
										</div>
										<div class="Inside-cabinets">Interior Windows</div>
										<div class="-minutes">30 minutes</div>-->
									</div>
									<hr>
								</div>
								<div class="row bottom-margin2">
									<div>
										<div class="mb-3">
											<label for="comments" class="form-label">Comments</label>
											<textarea class="form-control" id="comments" rows="3"
												name="comments"></textarea>
										</div>
										<div class="form-check mb-3">
											<input class="form-check-input" type="checkbox" value="1"
												id="haspets" name="has_pets"> <label
												class="form-check-label" for="haspets"> I have pets
												at home </label>
										</div>
										<div class="border-top"></div>
									</div>

									<div class="mt-3">
										<button class="btn btn-outline-success" type="submit"
											style="float: right;" id="scheduleandplanformbutton">Continue</button>
									</div>
								</div>
							</form:form>
						</div>

						<!-- Your Details Tab -->
						<div class="tab-pane fade" id="details" role="tabpanel"
							aria-labelledby="nav-details-tab">
							<div class="row">
								<span class="contactdetails">Enter your contact details,
									so we can serve you in a better way!</span>
							</div>
							<div class="mb-4 mt-3">

								<form id="addressform" class="custom-form mb-4">

									<div class="row mt-2">
										<div class="col-md-6">

											<div class="form-outline custom-address-form"
												style="float: right;">
												<label class="form-label" for="streetname">Street
													Name</label> <input type="text" id="streetname"
													class="form-control form-control-lg "
													placeholder="Street Name" />

											</div>

										</div>
										<div class="col-md-6">

											<div class="form-outline">
												<label class="form-label" for="houseno">House No</label> <input
													type="text" id="houseno"
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
													Code</label> <input type="text" id="postalcode"
													class="form-control form-control-lg "
													placeholder="Postal Code" />

											</div>

										</div>

										<div class="col-md-6">

											<div class="form-outline">
												<label class="form-label" for="city">City</label> <input
													type="text" id="city"
													class="form-control form-control-lg custom-address-form"
													placeholder="City" />

											</div>

										</div>

									</div>

									<div class="row">
										<div class="col-md-6 mt-2 ml-5" style="margin-left: 77px;">
											<label class="form-label" for="phoneNumber">Phone No</label>
											<div class="input-group">

												<span class="input-group-text" id="email">+49</span> <input
													type="tel" id="phoneNumber"
													class="form-control form-control-lg phone"
													placeholder="Phone Number" />

											</div>

										</div>
									</div>

									<div class="mb-4 mt-4" style="margin-left: 77px;">
										<input class="btn btn-primary btn-lg" type="submit"
											value="Submit" /> <input
											class="btn btn-primary btn-lg btn-cancel" type="submit"
											value="cancel" />
									</div>

								</form>
								<button class="btn btn-outline-success add-new-address mb-3"
									id="addaddress" onclick="showform()">+ Add New Address
								</button>
							</div>
							<div class="mt-3">
								<button class="btn btn-outline-success" type="submit"
									style="float: right;">Continue</button>
							</div>
						</div>

						<!-- Payment Tab -->
						<div class="tab-pane fade" id="payment" role="tabpanel"
							aria-labelledby="nav-payment-tab"></div>
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
		
	</script>

	<script type="text/javascript">
		console.log(document.getElementById("insideCabinets").classList
				.contains("mystyle"));
		$("#insideCabinets").on("click", function() {
			this.classList.toggle("mystyle");

		})

		$("#insideFridge").on("click", function() {
			this.classList.toggle("mystyle");
		})

		$("#insideOven").on("click", function() {
			this.classList.toggle("mystyle");
		})

		$("#laundary").on("click", function() {
			this.classList.toggle("mystyle");
		})

		$("#interiorWindows").on("click", function() {
			this.classList.toggle("mystyle");
		})

		$(document)

		console.log($("#insideCabinets").hasClass("mystyle"));
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
										$("#servicestartdatevalue").html(
												newdate);
										$("#servicedatetime").show();
									});

					console.log($("select#servicestarttime").val());
					$("#servicestarttimevalue").html(servicestarttime.value);

					$("select#servicestarttime").change(function() {
						$("#servicestarttimevalue").html(this.value);
					})

					console.log($("select#servicehours").val());
					$("#servicehoursvalue").html(servicehours.value + " Hrs");

					$("select#servicehours").change(
							function() {
								console.log(this.value);
								$("#servicehoursvalue").html(
										servicehours.value + " Hrs");
							})

					//console.log($("#insideCabinets").hasClass('mystyle'));

					//$("#insideCabinets").change(function(){
					//	console.log($("#insideCabinets").hasClass('mystyle'));
					//});

					//if(($("#insideCabinets").hasClass('mystyle')) || ($("#insideFridge").hasClass('mystyle')) || 
					//		($("#insideOven").hasClass('mystyle')) || ($("#laundary").hasClass('mystyle')) || 
					//	($("#interioWindows").hasClass('mystyle'))){
					//$("#extras").show();
					//}
				});

		//document.write(datePattern);
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
						$("#nav-details-tab").prop("disabled", false);
						document.getElementById("nav-details-tab").click();
					},
					error : function(data) {
						console.log(data);
					}
				})
			});
		});
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