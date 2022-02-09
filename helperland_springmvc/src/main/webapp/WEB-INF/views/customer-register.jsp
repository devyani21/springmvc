<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/customer-register.css' />" />
</head>

<body>
    <div class="wrapper">
        <%@include file="header2.jsp" %>
        <section>
            <div class="container mt-5">
                <div class="row">
                    <div class="col-lg col Contact-us ">
                        Create an Account
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg col">
                        <img src="<c:url value='/resources/img/contact/forma-1-copy-5.png' />" alt="" class="Forma-1-copy-5">
                    </div>
                </div>
            </div>
        </section>

        <section class="vh-100 gradient-custom">
            <div class="container h-100">
                <div class="row justify-content-center align-items-center h-100">
                    <div class="col-12 col-lg-9 col-xl-7">
                        <div class="card shadow-2-strong card-registration">
                            <div class="card-body p-4 p-md-5">
                                <!-- <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Register here</h3> -->
                                <form>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" id="firstName" class="form-control form-control-lg"
                                                    placeholder="Firstname" />
                                                <label class="form-label" for="firstName"></label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" id="lastName" class="form-control form-control-lg"
                                                    placeholder="Lastname" />
                                                <label class="form-label" for="lastName"></label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="input-group">
                                                <span class="input-group-text" id="email">+49</span>
                                                <input type="tel" id="phoneNumber"
                                                    class="form-control form-control-lg" placeholder="Phone Number"/>
                                                <label class="form-label" for="phoneNumber"></label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4 pb-2">

                                            <div class="form-outline">
                                                <input type="email" id="emailAddress"
                                                    class="form-control form-control-lg" placeholder="Email"/>
                                                <label class="form-label" for="emailAddress"></label>
                                            </div>

                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="password" id="password" class="form-control form-control-lg"
                                                    placeholder="Password" />
                                                <label class="form-label" for="password"></label>
                                            </div>

                                        </div>
                                        <div class="col-md-6 mb-4">

                                            <div class="form-outline">
                                                <input type="text" id="confirmpassword" class="form-control form-control-lg"
                                                    placeholder="Confirm Password" />
                                                <label class="form-label" for="confirmpassword"></label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="mb-4 mt-4 pt-1">
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="js/common.js" type="text/javascript"></script>
</body>

</html>