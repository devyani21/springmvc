<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <c:set var="usertypeid" value="${userinfo.user_type_id }"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/contact.css' />">
	<c:if test="${usertypeid == 1}">
		<link rel="stylesheet" href="<c:url value='/resources/css/customer-dashboard.css' />" />
	</c:if>
	<c:if test="${usertypeid == 2}">
		<link rel="stylesheet" href="<c:url value='/resources/css/customer-dashboard.css' />" />
	</c:if>
    
    
</head>

<body>
    <div class="wrapper">
    <c:if test="${usertypeid  == 1}">
			<%@include file="customer-header.jsp" %>
		</c:if>
	<c:if test="${usertypeid == 2 }">
			<%@ include file="SP-header2.jsp" %>
		</c:if>
	<c:if test="${usertypeid == 5 }">
			<%@include file="header2.jsp" %>
		</c:if>
    
    
        <div id="banner3"></div>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-lg col Contact-us ">
                        Contact Us
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg col">
                        <img src="<c:url value='/resources/img/contact/forma-1-copy-5.png' />" alt="" class="Forma-1-copy-5">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col test6">
                        <img src="<c:url value='/resources/img/contact/forma-1.png' />"
                            class="Forma-1">
                        <div class="-Lorem-ipsum-text-100-Lorem-ipsum-AB">
                            1111 Lorem ipsum text 100, Lorem ipsum AB
                        </div>
                    </div>
                    <div class="col-lg-4 col">
                        <img src="<c:url value='/resources/img/contact/phone-call.png' />"
                            class="phone-call">
                        <div class="-Lorem-ipsum-text-100-Lorem-ipsum-AB">
                            +49 (40) 123 56 7890
                            <div>
                                +49 (40) 987 56 0000
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col">
                        <img src="<c:url value='/resources/img/contact/vector-smart-object.jpg' />"
                            class="Vector-Smart-Object">
                        <div class="-Lorem-ipsum-text-100-Lorem-ipsum-AB">
                            info@helperland.com
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section class="vh-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration">
                            <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Get in Touch with Us</h3>
                                <h4 class="text-danger text-center">${ errmsg } </h4>
                                <form action="contact" method="post">

                                    <div class="row">
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" id="firstName" class="form-control form-control-lg"
                                                    placeholder="Firstname" name="first_name" />
                                                <label class="form-label" for="firstName"></label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" id="lastName" class="form-control form-control-lg"
                                                    placeholder="Lastname" name="last_name"/>
                                                <label class="form-label" for="lastName"></label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                <input type="tel" id="phoneNumber"
                                                    class="form-control form-control-lg" placeholder="Phone Number" name="phone_no"/>
                                                <label class="form-label" for="phoneNumber"></label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                <input type="email" id="emailAddress"
                                                    class="form-control form-control-lg" placeholder="Email" name="email"/>
                                                <label class="form-label" for="emailAddress"></label>
                                            </div>

                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-12 mb-4 pb-2">
                                            <div class="form-outline">
                                            <select class=" select form-control form-control-lg" name="subject_type">
                                                <option value="general" selected>General</option>
                                                <option value="subject 1">Subject 1</option>
                                                <option value="subject 2">Subject 2</option>
                                                <option value="subject 3">Subject 3</option>
                                            </select>
                                            <label class="form-label select-label"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 mb-4 pb-2">
                                            <div class="form-outline">
                                                <textarea class="form-control" rows="5" placeholder="Message" id="message" name="message"></textarea>
                                                <label class="form-label" for="message"></label>
                                            </div>
                                        </div>
                                        
                                    </div>

                                    <div class="mb-4pt-1">
                                        <input class="btn btn-primary btn-lg" type="submit" value="Submit" />
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="map">        
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
            </div>
        </section>

        <%@include file="footer2.jsp" %>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="<c:url value='/resources/js/common.js' />" type="text/javascript"></script>
</body>

</html>