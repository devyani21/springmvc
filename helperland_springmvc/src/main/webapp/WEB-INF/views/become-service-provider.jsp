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
    <title>Become a Provider</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/become-service-provider.css' /> ">
</head>

<body>
    <div class="wrapper">
        <div id="banner" class="parallax">
        <%@ include file="../views/headers/header1.jsp" %> 
        <%@ include file="../views/modals/loginModal.jsp" %>
        <%@ include file="../views/modals/forgotPasswordModal.jsp" %>           
            <section class="vh-100">
                <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                    <div class="container h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                                <div class="card">
                                    <div class="card-body p-5">
                                    <h6> ${ error_msg } </h6>
                                        <h2 class="text-uppercase text-center mb-5">Register Now!</h2>

										<form:form modelAttribute="user"
											action="become-service-provider"
											id="serviceproviderregistration">

											<div class="form-outline mb-4">
												<input type="text" id="first-name"
													class="form-control form-control-lg"
													placeholder="First Name" name="first_name"/> <label class="form-label"
													for="first-name"></label>
											</div>
											<div class="form-outline mb-4">
												<input type="text" id="last-name"
													class="form-control form-control-lg"
													placeholder="Last Name"  name="last_name" /> <label class="form-label"
													for="last-name"></label>
											</div>

											<div class="form-outline mb-4">
												<input type="email" id="email"
													class="form-control form-control-lg"
													placeholder="Email Address" name="email"/> <label class="form-label"
													for="email"></label>
											</div>

											<div class="form-outline mb-4">
												<span class="rounded"></span> <input type="tel" id="phone"
													class="form-control form-control-lg"
													placeholder="Phone Number" name="mobile"> <label
													class="form-label input-group-addon" for="phone"></label>
											</div>

											<div class="form-outline mb-4">
												<input type="password" id="password"
													class="form-control form-control-lg" placeholder="Password" name="password"/>
												<label class="form-label" for="password"></label>
											</div>

											<div class="form-outline mb-4">
												<input type="password" id="Repeat-password"
													class="form-control form-control-lg"
													placeholder="Confirm Password" name="confirm_password"/> <label
													class="form-label" for="Repeat-password"></label>
											</div>

											<div class="form-check d-flex mb-4">
												<input class="form-check-input me-2" type="checkbox"
													value="" id="newsletters" required/> <label
													class="form-check-label" for="newsletters"> Send me
													newsletters from Helperland </label>
											</div>

											<div class="form-check d-flex mb-5 mt-2">
												<input class="form-check-input me-2" type="checkbox"
													value="" id="terms&conditions" required/> <label
													class="form-check-label" for="terms&conditions"> I accept <span id="terms_conditions"> <a href="#!">Terms
														and conditions</a> </span>& <span id="privacy_policy"><a href="#!">Privacy Policy</a></span>
												</label>
											</div>

											<div class="form-outline mb-2 g-recaptcha"
												data-sitekey="6Ldbdg0TAAAAAI7KAf72Q6uagbWzWecTeBWmrCpJ"></div>

											<div
												class="form-outline d-flex justify-content-center mb-2 mt-4">
												<button type="submit" class="btn btn-success btn-lg ">
													Get Started <i class="fa fa-arrow-right"></i>
												</button>

											</div>
									</div>
                                    </form:form>

                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
        <section>
            <div class="container w-50">
                <div class="row margn">
                    <div class="col-lg-12 col">
                        <span class="How-it-works">How it Works</span>
                    </div>
                </div>
                <div class="row margn2">
                    <div class="col-lg-6 col test">
                        <span class="Register-yourself">Register Yourself</span>
                        <div class="Provide-your-basic-information-to-register-yourself-as-a-servic">Provide your basic information to register yourself as a service provider.</div>
                        <div class="Read-more">
                            Read more <i class="fa fa-arrow-right"></i>
                        </div>
                    </div>
                    <div class="col-lg-6 col">
                        <img src="<c:url value='/resources/img/becomeprovider/img-1.jpg' />" class="img-1">
                    </div>
                </div>
                <div class="row margn2">
                    <div class="col-lg-6 col">
                        <img src="<c:url value='/resources/img/becomeprovider/img-2.png' />" class="img-2">
                    </div>
                    <div class="col-lg-6 col test">
                        <span class="Register-yourself">Get Service requests</span>
                        <div class="Provide-your-basic-information-to-register-yourself-as-a-servic">You will get service requests from
                            customes depend on service area and profile.</div>
                        <div class="Read-more">
                            Read more <i class="fa fa-arrow-right"></i>
                        </div>
                    </div>
                    
                </div>
                <div class="row margn2">
                    <div class="col-lg-6 col test">
                        <span class="Register-yourself">Complete service</span>
                        <div class="Provide-your-basic-information-to-register-yourself-as-a-servic">Accept service requests from your customers
                            and complete your work.</div>
                        <div class="Read-more">
                            Read more <i class="fa fa-arrow-right"></i>
                        </div>
                    </div>
                    <div class="col-lg-6 col">
                        <img src="<c:url value='/resources/img/becomeprovider/img-1.jpg' />" class="img-1">
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-lg col test7">
                        <div class="GET-OUR-NEWSLETTER">
                            GET OUR NEWSLETTER
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class=" col-lg-6 col test8">
                    <div class="Ellipse-649" onclick="topFunction()" style="cursor: pointer;">
                        <img src="<c:url value='/resources/img/index/forma-1(1).png' />"
								class="Forma-1-new">
                    </div>
                    <div class="Rounded-Rectangle-649">
                        <div class="Your-Email">
                            Your Email
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col test8">
                    <div class="Rounded-Rectangle-649-copy">
                        <div class="Submit">
                            Submit
                        </div>
                    </div>
                    <img src="<c:url value='/resources/img/index/layer-598.png' />"
                        class="Layer-598">
                </div>
            </div>
        </section>
<%@include file="../views/footers/footer2.jsp" %>
    </div>

    <!-- <script src='https://www.google.com/recaptcha/api.js'></script> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script type="text/javascript"
		src="<c:url value='/resources/js/common.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/resources/js/formvalidate.js' />"></script>

</body>

</html>