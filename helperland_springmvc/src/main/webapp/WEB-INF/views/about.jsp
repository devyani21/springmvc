<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/about.css' />">
</head>

<body>
    <div class="wrapper">
    <%@ include file="../views/headers/header2.jsp" %>
    
    <%@ include file="../views/modals/loginModal.jsp" %>
    <%@ include file="../views/modals/forgotPasswordModal.jsp" %>   
        
        <div id="banner4"></div>
        <section>
        <div class="container w-75">
            <div class="row">
                <div class="col-lg col A-Few-words-about-us">
                    A Few words about us
                </div>
            </div>
            <div class="row">
                <div class="col-lg col">
                    <img src="<c:url value='/resources/img/forma-1-copy-5.png' />" alt="" class="Forma-1-copy-5">
                </div>
            </div>
            <div class="row">
                <div class="col-lg col Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Aenea">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean molestie convallis tempor. Duis
                    vestibulum vel risus condimentum dictum. Orci varius natoque penatibus et magnis dis parturient
                    montes, nascetur ridiculus mus. Vivamus quis enim orci. Fusce risus lacus, sollicitudin eu magna
                    sed, pharetra sodales libero. Proin tincidunt vel erat id porttitor. Donec tristique est arcu, sed
                    dignissim velit vulputate ultricies.
                </div>
            </div>
            <div class="row">
                <div class="col-lg col Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Aenea2 ">
                    Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea
                    dictumst.Vivamus eget mauris eget nisl euismod
                    volutpat sed sed libero. Quisque sit amet lectus ex. Ut semper ligula et mauris tincidunt hendrerit.
                    Aenean ut rhoncus orci, vel elementum
                    turpis. Donec tempor aliquet magna eu fringilla. Nam lobortis libero ut odio finibus lobortis.In hac
                    habitasse platea dictumst. Mauris a
                    hendrerit felis. Praesent ac vehicula ipsum, at porta tellus. Sed dolor augue, posuere sed neque
                    eget, aliquam ultricies velit. Sed lacus elit,
                    tincidunt et massa ac, vehicula placerat lorem.
                </div>
            </div>
            <div class="row">
                <div class="col-lg col Our-Story">
                    Our Story
                </div>
            </div>
            <div class="row">
                <div class="col-lg col">
                    <img src="<c:url value='/resources/img/forma-1-copy-5.png' />" alt="" class="Forma-1-copy-5">
                </div>
            </div>
            <div class="row">
                <div class="col-lg col Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Aenea3">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean molestie convallis tempor. Duis vestibulum vel risus condimentum dictum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus quis enim orci. Fusce risus lacus, sollicitudin eu magna sed, pharetra sodales libero. Proin tincidunt vel erat id porttitor. Donec tristique est arcu, sed dignissim velit vulputate ultricies.
                </div>
            </div>
            <div class="row space">
                <div class="col-lg col Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Aenea3">
                    Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Vivamus eget mauris eget nisl euismod volutpat sed sed libero. Quisque sit amet lectus ex. Ut semper ligula et mauris tincidunt hendrerit. 
                </div>
            </div>
            <div class="row space">
                <div class="col-lg col Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Aenea3">                    
                    Aenean ut rhoncus orci, vel elementum turpis. Donec tempor aliquet magna eu fringilla. Nam lobortis libero ut odio finibus lobortis. In hac habitasse platea dictumst. Mauris a hendrerit felis. Praesent ac vehicula ipsum, at porta tellus. Sed dolor augue, posuere sed neque eget, aliquam ultricies velit. Sed lacus elit, tincidunt et massa ac, vehicula placerat lorem. 
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="<c:url value='/resources/js/common.js' />" type="text/javascript"></script>
</body>

</html>