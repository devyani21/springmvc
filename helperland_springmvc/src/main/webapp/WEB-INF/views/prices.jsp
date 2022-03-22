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
    <title>Prices</title>
    
    <c:set var="usertypeid" value="${userinfo.user_type_id }"/>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/prices.css' />">
    <c:if test="${userinfo.user_type_id == 1}">
		<link href="<c:url value="/resources/css/header4.css" />"
		rel="stylesheet" />
	</c:if>
	<c:if test="${userinfo.user_type_id == 2}">
	<link href="<c:url value="/resources/css/SP-header2.css" />"
		rel="stylesheet" />
		</c:if>
</head>

<body>
    <div class="wrapper">
        <c:if test="${usertypeid  == 1}">
        <%@ include file="../views/headers/header4.jsp" %>
        </c:if>
		<c:if test="${usertypeid == 2 }">
		<%@ include file="../views/headers/SP-header2.jsp" %>
		</c:if>
		<c:if test="${usertypeid == null }">
		<%@ include file="../views/headers/header2.jsp" %>
		</c:if>
		
		<%@ include file="../views/modals/loginModal.jsp" %>
        <%@ include file="../views/modals/forgotPasswordModal.jsp" %>   
		
		<div id="banner5"></div>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-lg col Prices">
                        Prices
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg col">
                        <img src="<c:url value='/resources/img/prices/forma-1-copy-5.png' />" alt="" class="Forma-1-copy-5">
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container w-50">
                <div class="row">
                    <div class="col-lg col">
                        <div class="card card1 test">
                            <div class="card-body card-body1">
                                <div class="Rectangle-20-copy One-Time">One Time</div>
                                <div class="subtitle mb-2 mt-4">&euro; 20<span class="text-muted">/hr</span></div>
                                <div class="card-text Lower-prices mt-4 mb-2 ms-4">
                                    <img src="<c:url value='/resources/img/prices/checkbox.png' />"
                                        class="checkbox">
                                    Lower Prices
                                </div>
                                <div class="card-text Lower-prices mt-4 ms-4">
                                    <img src="<c:url value='/resources/img/prices/checkbox.png' />"
                                        class="checkbox">
                                    Easy online & secure payment
                                </div>
                                <div class="card-text Lower-prices mt-4 mb-2 ms-4">
                                    <img src="<c:url value='/resources/img/prices/checkbox.png' />"
                                        class="checkbox">
                                    Easy amendment
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>

        <section>
            <div class="container w-75">
                <hr>
                <div class="row">
                    <div class="col-lg col Extra-services">
                        Extra services
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg col">
                        <img src="<c:url value='/resources/img/prices/forma-1-copy-5.png' />" alt="" class="Forma-1-copy-5">
                    </div>
                </div>
                <!-- col-md-equal col-sm-equal col-xs-equal -->
                <div class="row test">
                    <div class="col-lg-equal col test">
                        <div class="Ellipse-667">
                            <img src="<c:url value='/resources/img/prices/shape-1.png' />"
                              class="shape-1">
                        </div>
                        <div class="Inside-cabinets">
                            Inside cabinets
                        </div>
                        <div class="-minutes">
                            30 minutes
                        </div>
                    </div>
                    <div class="col-lg-equal col">
                        <div class="Ellipse-667">
                            <img src="<c:url value='/resources/img/prices/shape-2.png' />"
                                 class="shape-2">
                        </div>
                        <div class="Inside-cabinets">
                            Inside Fridge
                        </div>
                        <div class="-minutes">
                            30 minutes
                        </div>
                    </div>
                    <div class="col-lg-equal col">
                        <div class="Ellipse-667">
                            <img src="<c:url value='/resources/img/prices/shape-3.png' />"
                                 class="shape-3">
                        </div>
                        <div class="Inside-cabinets">
                            Inside Oven
                        </div>
                        <div class="-minutes">
                            30 minutes
                        </div>
                    </div>
                    <div class="col-lg-equal col">
                        <div class="Ellipse-667">
                            <img src="<c:url value='/resources/img/prices/shape-4.png' />"
                                 class="shape-4">
                        </div>
                        <div class="Inside-cabinets">
                            Laundary Wash & Dry
                        </div>
                        <div class="-minutes">
                            30 minutes
                        </div>
                    </div>
                    <div class="col-lg-equal col">
                        <div class="Ellipse-667">
                            <img src="<c:url value='/resources/img/prices/shape-5.png' />"
                                 class="shape-5">
                        </div>
                        <div class="Inside-cabinets">
                            Interior Windows
                        </div>
                        <div class="-minutes">
                            30 minutes
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="Rectangle-21-copy">
            <div class="container w-75">
                <div class="row">
                    <div class="col-lg col What-we-include-in-cleaning">
                        What we include in cleaning
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg col">
                        <img src="<c:url value='/resources/img/prices/forma-1-copy-5.png' />" alt="" class="Forma-1-copy-5">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm col test2">
                        <div class="card card2">
                            <img src="<c:url value='/resources/img/prices/card-1.jpg' />" class="card-img-top" alt="...">
                            <div class="card-body">
                                <div class="card-title Bedroom-and-Living-Room">Bedroom and Living Room</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Dust all accessible surfaces
                                </div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Wipe down all mirrors and glass
                                    fixtures</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Clean all floor surfaces</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Take out garbage and recycling
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm col test2">
                        <div class="card card2">
                            <img src="<c:url value='/resources/img/prices/card-2.jpg' />" class="card-img-top" alt="...">
                            <div class="card-body">
                                <div class="card-title Bedroom-and-Living-Room">Bathrooms</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Wash and sanitize the toilet,
                                    shower, tub, sink</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Dust all accessible surfaces
                                </div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Wipe down all mirrors and glass
                                    fixtures</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Clean all floor surfaces</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Take out garbage and recycling
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm col test2">
                        <div class="card card2">
                            <img src="<c:url value='/resources/img/prices/card-3.jpg' />" class="card-img-top" alt="...">
                            <div class="card-body">
                                <div class="card-title Bedroom-and-Living-Room">Kitchen</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Dust all accessible surfaces
                                </div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Empty sink and load up
                                    dishwasher</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Wipe down exterior of stove,
                                    oven and fridge</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Clean all floor surfaces</div>
                                <div class="card-text Dust-all-accessible-surfaces-Wipe-down-all-mirrors-and-glass-fi">
                                    <img src="img/vector-smart-object-copy.png" alt=""> Take out garbage and recycling
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="container w-75">
                <div class="row">
                    <div class="col-lg col What-we-include-in-cleaning">
                        Why Helperland
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg col">
                        <img src="<c:url value='/resources/img/prices/forma-1-copy-5.png' />" alt="" class="Forma-1-copy-5">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col test3">
                        <div class="Experienced-and-vetted-professionals">
                            Experienced and vetted professionals
                        </div>
                        <div class="dominate-the-industry-in-scale-and-scope-with-an-adaptable-ext">
                            dominate the industry in scale and scope with an adaptable, extensive network that consistently delivers exceptional results.
                        </div>
                        <div class="Experienced-and-vetted-professionals">
                            Dedicated customer service
                        </div>
                        <div class="dominate-the-industry-in-scale-and-scope-with-an-adaptable-ext">
                            to our customers and are guided in all we do by their needs. The team is always happy to support you and offer all the information. you need.
                        </div>
                    </div>
                    <div class="col-lg-4 col test4">
                        <img src="<c:url value='/resources/img/prices/the-best-img-1.png' />" class="the-best-img-1">
                    </div>
                    <div class="col-lg-4 col test5">
                        <div class="Experienced-and-vetted-professionals2">
                            Every cleaning is insured
                        </div>
                        <div class="dominate-the-industry-in-scale-and-scope-with-an-adaptable-ext2">
                            and seek to provide exceptional service and engage in proactive behavior. We‘d be happy to clean your homes.
                        </div>
                        <div class="Experienced-and-vetted-professionals2">
                            Secure online payment
                        </div>
                        <div class="dominate-the-industry-in-scale-and-scope-with-an-adaptable-ext2">
                            Payment is processed securely online. Customers pay safely online and manage the booking.
                        </div>
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
            </div>
        </section>
       <%@include file="../views/footers/footer2.jsp" %>
    </div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="<c:url value='/resources/js/common.js' />" type="text/javascript"></script>
</body>

</html>