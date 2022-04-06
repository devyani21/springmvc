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
<title>Helperland</title>

<c:set var="usertypeid" value="${userinfo.user_type_id }"/>


	
 <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/index.css' />" />
<c:if test="${usertypeid == 1 }">
		<link href="<c:url value="/resources/css/header3.css" />"
		rel="stylesheet" />
	</c:if>
	<c:if test="${usertypeid == 2 }">
		<link href="<c:url value="/resources/css/header3.css" />"
		rel="stylesheet" />
	</c:if>

</head>

<body>
	<div class="wrapper">
		<div id="banner" class="parallax">
		<c:if test="${usertypeid  == 1}">
		<%@ include file="../views/headers/header3.jsp" %>
		</c:if>
		<c:if test="${usertypeid  == 2}">
		<%@ include file="../views/headers/header5.jsp" %>
		</c:if>
		<c:if test="${usertypeid == null }">
		<%@ include file="../views/headers/header1.jsp" %>
		</c:if>
			
		<%@ include file="../views/modals/loginModal.jsp" %>
        <%@ include file="../views/modals/forgotPasswordModal.jsp" %>    
            
            
			<section>
				<div class="row">
					<div class="col-lg col Lorem-ipsum-text example nubull">
						Lorem ipsum text
						<div
							class="nobull example2 Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing">
							<ul>
								<li><i class="fa fa-check" aria-hidden="true"></i>Lorem
									ipsum dolor sit amet consectetur adipisicing.</li>
								<li><i class="fa fa-check" aria-hidden="true"></i>Lorem
									ipsum dolor sit amet consectetur adipisicing.</li>
								<li><i class="fa fa-check" aria-hidden="true"></i>Lorem
									ipsum dolor sit amet consectetur adipisicing.</li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<center>
			</center>
			<section>
				<div class="row">
					<div class="col-lg col example3">
						<a class="Rounded-Rectangle-6-copy-4 book-a-cleaner-copy" href="#">Let's
							Book a Cleaner</a>
					</div>
				</div>
			</section>
			<section>
				<div class="container bottom-margin">
					<div class="row justify-content-center test">
						<div class="col-lg-3 col-12 col-md-6">
							<img
								src="<c:url value='/resources/img/index/forma-1-copy.png' />"
								class="Forma-1-copy">
							<div class="Enter-your-postcode">Enter your postcode</div>
							<img
								src="<c:url value='/resources/img/index/step-arrow-1.png' />"
								class="step-arrow1 justify-content-end">
						</div>
						<div class="col-lg-3 col-12 col-md-6">
							<img src="<c:url value='/resources/img/index/group-22.png' />"
								class="Group-22">
							<div class="Select-your-plan">Select your plan</div>
							<img
								src="<c:url value='/resources/img/index/step-arrow-1-copy.png' />"
								class="step-arrow1-copy justify-content-end">
						</div>
						<div class="col-lg-3 col-12 col-md-6">
							<img src="<c:url value='/resources/img/index/forma-1.png' />"
								class="Forma-1">
							<div class="Pay-securely-online">Pay securely online</div>
							<img
								src="<c:url value='/resources/img/index/step-arrow-1-copy-2.png' />"
								srcset="img/step-arrow-1-copy-2@2x.png 2x,img/step-arrow-1-copy-2@3x.png 3x"
								class="step-arrow1-copy-2">
						</div>
						<div class="col-lg-3 col-12 col-md-6">
							<img src="<c:url value='/resources/img/index/forma-2.png' />"
								class="Forma-2">
							<div class="Enjoy-amazing-service">Enjoy amazing service</div>
						</div>
					</div>
				</div>
			</section>
		</div>

		<section>
			<div class="container">
				<div class="row">
					<div class="col-lg col Why-Helperland">Why Helperland</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col test3">
						<img src="<c:url value='/resources/img/index/group-21.png' />"
							class=" card-img-top Group-21">
						<div class="card-body">
							<div class="card-text Experience-Vetted-Professionals">
								Experience & Vetted Professionals</div>
							<div
								class="dominate-the-industry-in-scale-and-scope-with-an-adaptable-ext">
								dominate the industry in scale and scope with an adaptable,
								extensive network that consistently delivers exceptional
								results.</div>
						</div>
					</div>
					<div class="col-lg-4 col test3">
						<img src="<c:url value='/resources/img/index/group-23.png' />"
							class=" card-img-top Group-21">
						<div class="card-body">
							<div class="card-text Experience-Vetted-Professionals">
								Secure Online Payment</div>
							<div
								class="dominate-the-industry-in-scale-and-scope-with-an-adaptable-ext-copy">
								Payment is processed securely online. Customers pay safely
								online and manage the booking.</div>
						</div>
					</div>
					<div class="col-lg-4 col test3">
						<img src="<c:url value='/resources/img/index/group-24.png' />"
							class=" card-img-top Group-21">
						<div class="card-body">
							<div class="card-text Experience-Vetted-Professionals">
								Dedicated Customer Service</div>
							<div
								class="dominate-the-industry-in-scale-and-scope-with-an-adaptable-ext">
								to our customers and are guided in all we do by their needs. The
								team is always happy to support you and offer all the
								information.</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section>
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col">
						<div class="Lorem-ipsum-dolor-sit-amet-consectetur test4">
							Lorem ipsum dolor sit amet, consectetur</div>
						<div
							class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Donec test5">Lorem
							ipsum dolor sit amet, consectetur adipiscing elit. Donec nisi
							sapien, suscipit ut accumsan vitae, pulvinar ac libero.</div>
						<div
							class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Donec-copy1 test5">
							Aliquam erat volutpat. Nullam quis ex odio. Nam bibendum cursus
							purus, vel efficitur urna finibus vitae. Nullam finibus aliquet
							pharetra. Morbi in sem dolor. Integer pretium hendrerit ante quis
							vehicula.</div>
						<div
							class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Donec test5">
							Mauris consequat ornare enim, sed lobortis quam ultrices sed.</div>

					</div>
					<div class="col-lg-4 col test4">
						<img src="<c:url value='/resources/img/index/group-36.png' />"
							class="Group-36">
					</div>
				</div>
			</div>
		</section>

		<section>
			<div class="container">
				<div class="row">
					<div class="col-lg col Our-Blog ">Our Blog</div>

				</div>
				<div class="row">
					<div class="col-lg-4 col test3">
						<div class="Rounded-Rectangle-583">
							<img src="<c:url value='/resources/img/index/group-28.png' />"
								class="Group-28">
							<div class="card-body">
								<div class="Lorem-ipsum-dolor-sit-amet">Lorem ipsum dolor
									sit amet</div>
								<div class="January-28-2019">January 28, 2019</div>
								<div
									class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-fe">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
									fermentum metus pulvinar aliquet.</div>
								<div class="Read-the-Post">
									Read the Post <i class="fa fa-arrow-right" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col test3">
						<div class="Rounded-Rectangle-583">
							<img src="<c:url value='/resources/img/index/group-28.png' />"
								class="Group-28">
							<div class="card-body">
								<div class="Lorem-ipsum-dolor-sit-amet">Lorem ipsum dolor
									sit amet</div>
								<div class="January-28-2019">January 28, 2019</div>
								<div
									class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-fe">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
									fermentum metus pulvinar aliquet.</div>
								<div class="Read-the-Post">
									Read the Post <i class="fa fa-arrow-right" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col test3">
						<div class="Rounded-Rectangle-583">
							<img src="<c:url value='/resources/img/index/group-28.png' />"
								class="Group-28">
							<div class="card-body">
								<div class="Lorem-ipsum-dolor-sit-amet">Lorem ipsum dolor
									sit amet</div>
								<div class="January-28-2019">January 28, 2019</div>
								<div
									class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-fe">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
									fermentum metus pulvinar aliquet.</div>
								<div class="Read-the-Post">
									Read the Post <i class="fa fa-arrow-right" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>

		<section class="Rectangle-10">
			<div class="container">
				<div class="row">
					<div class="col-lg col test3">
						<div class="What-Our-Customers-Say">What Our Customers Say</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col test6">
						<div class="Rounded-Rectangle-506-copy test6">
							<div class="message">
								<img src="<c:url value='/resources/img/index/message.png' />"
									class="message">
							</div>
							<div class="home_lawyer2_ourteam_2">
								<img src="<c:url value='/resources/img/index/group-31.png' />"
									class="Group-31">
							</div>
							<div class="Lary-Watson">Lary Watson</div>
							<div class="Manchester man">Manchester</div>
							<div class="card-body">
								<div
									class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-fe">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
									fermentum metus pulvinar aliquet consequat. Praesent nec
									malesuada nibh.</div>
								<div
									class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-fe">
									Nullam et metus congue, auctor augue sit amet, consectetur
									tortor.</div>

								<div class="Read-more">
									Read More <i class="fa fa-arrow-right" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col test6">
						<div class="Rounded-Rectangle-506-copy test6">
							<div class="message">
								<img src="<c:url value='/resources/img/index/group-31.png' />"
									class="message">
							</div>
							<div class="home_lawyer2_ourteam_2">
								<img src="<c:url value='/resources/img/index/group-31.png' />"
									class="Group-31">
							</div>
							<div class="Lary-Watson">Lary Watson</div>
							<div class="Manchester man">Manchester</div>
							<div class="card-body">
								<div
									class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-fe">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
									fermentum metus pulvinar aliquet consequat. Praesent nec
									malesuada nibh.</div>
								<div
									class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-fe">
									Nullam et metus congue, auctor augue sit amet, consectetur
									tortor.</div>

								<div class="Read-more">
									Read More <i class="fa fa-arrow-right" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col test6">
						<div class="Rounded-Rectangle-506-copy test6">
							<div class="message">
								<img src="<c:url value='/resources/img/index/group-31.png' />"
									class="message">
							</div>
							<div class="home_lawyer2_ourteam_2">
								<img src="<c:url value='/resources/img/index/group-31.png' />"
									class="Group-31">
							</div>
							<div class="Lary-Watson">Lary Watson</div>
							<div class="Manchester man">Manchester</div>
							<div class="card-body">
								<div
									class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-fe">
									Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
									fermentum metus pulvinar aliquet consequat. Praesent nec
									malesuada nibh.</div>
								<div
									class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-fe">
									Nullam et metus congue, auctor augue sit amet, consectetur
									tortor.</div>

								<div class="Read-more">
									Read More <i class="fa fa-arrow-right" aria-hidden="true"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
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
		
		<%@include file="../views/footers/footer1.jsp" %>
			</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/common.js' />"></script>
		
		<script type="text/javascript">
		$(document).ready(function () {
			console.log("page is ready..");
			$('#forgotpasswordform').on('submit',function(event) {
				event.preventDefault();
				
				$.ajax({
					url:"forgotPassword",
					data:$("#forgotpasswordform").serialize(),
					type:"POST",
					success: function(data,textStatus,jqXHR){
						console.log(data);
						console.log("Success...");
						if(data == "true"){
							document.getElementById("forgotpasswordform").reset();
							$("#forgotformpassword").modal('toggle');
							$("#modalclosebutton").click();
							alert("Email sent on your mail id");
							
							
						}
						else{
							document.getElementById("forgotpasswordform").reset();
							$("#message").html("User with this email id does not exist!");
						}
					},
					error: function(jqXHR, textStatus, errorThrown){
						console.log(data);
						console.log("error...");
					}
				})
				event.preventDefault();
			})
		})
		</script>
		
		<script type="text/javascript">
		$(document).ready(function () {
			console.log("page is ready..");
			$('#loginForm').on('submit',function(event) {
				event.preventDefault();
				
				$.ajax({
					url:"loginProcess",
					data:$("#loginForm").serialize(),
					type:"POST",
					success: function(data,textStatus,jqXHR){
						console.log(data);
						console.log("Success...");
						if(data == "customer"){
							var currLoc = $(location).attr('href');
							console.log(currLoc);
							window.location.replace(currLoc+"customer-dashboard");	
						}
						else if(data == "service-provider"){
							var currLoc = $(location).attr('href');
							console.log(currLoc);
							window.location.replace(currLoc+"sp-dashboard");	
						}
						else if(data == "false"){
							document.getElementById("loginForm").reset();
							$("#message2").html("Please wait for the admin to approve and activate your account!");
							location.reload();
						}
						else if(data == "admin"){
							var currLoc = $(location).attr('href');
							console.log(currLoc);
							window.location.replace(currLoc+"service-requests");
						}
						else if(data == "invalid"){
							document.getElementById("loginForm").reset();
							$("#message2").html("Invalid username or password!");
						}
						else if(data == "home"){
							//var currLoc = $(location).attr('href');
							//console.log(currLoc);
							window.location.replace("/"); 
						}
					},
					error: function(jqXHR, textStatus, errorThrown){
						console.log(data);
						console.log("error...");
						alert("some error..");
					}
				})
				event.preventDefault();
			})
		})
		</script>
</body>

</html>