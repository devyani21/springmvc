<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Service History</title>
    
    <c:set var="usertypeid" value="${userinfo.user_type_id }"/>
    <c:set var="sr" value="${servicerequests }" />
    <c:set var="u" value="${users }" />
    <c:set var="sra" value="${srAddress }" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/css/bootstrap.min.css"
        integrity="sha512-thoh2veB35ojlAhyYZC0eaztTAUhxLvSZlWrNtlV01njqs/UdY3421Jg7lX0Gq9SRdGVQeL8xeBp9x1IPyL1wQ=="
        crossorigin="anonymous" />
    
    <link rel="stylesheet" href="https://mdbootstrap.com/previews/mdb-ui-kit/sidenav/css/mdb.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/select/1.3.3/css/select.bootstrap5.min.css" />
    <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="<c:url value='/resources/css/customer-service-history.css' />" />
</head>

<body>
    <div class="wrapper">
    <c:if test="${usertypeid  == 1}">
    <%@ include file="../headers/customer-header.jsp" %>
		</c:if>
	<c:if test="${usertypeid == 2 }">
	<%@ include file="../headers/SP-header.jsp" %>
		</c:if>
        
        <section class="welcome">
            <div class="container">
                <div class="row">
                    <div class="Welcome-Sandip">
                        <span style="text-transform:capitalize;">Welcome, ${userinfo.first_name}!</span>
                    </div>
                </div>
            </div>
    </div>
    </section>

    <section>
        <div class="container table-container w-75">
            <table id="example" class="table" style="width:100%">
                <thead>
                    <tr>
                    	<th>Service Id</th>
                        <th>Service Details</th>
                        <th>Service Provider</th>
                        <th>Payment</th>
                        <th>Status</th>
                        <th>Rate SP</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="sr" items="${servicerequests}">
                    <tr>
                    	<td>${sr.service_id }</td>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span><fmt:formatDate type = "date" value = "${sr.service_start_date}" pattern="dd/MM/yyyy"/></span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>${sr.service_start_time} - 02:00</span></div>
                        </td>
                        <td>
                        
                            <div style="display: inline-block; margin-top: 17px">
                            <c:forEach var="u" items="${users }">
		                                        		<c:if test="${u.user_id == sr.service_provider_id}"> 
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                                </c:if>
                                </c:forEach>
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">
                            <c:forEach var="u" items="${users }">
		                                        		<c:if test="${u.user_id == sr.service_provider_id}">${u.first_name } ${u.last_name }
		                                        		</c:if>
		                                        		</c:forEach>
                                <!--<div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>-->
                            </div>

                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">$ </span>${sr.total_cost } 
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="rescheduleModal">Reschedule</button><button type="button" class="btn btn-danger rate" data-bs-toggle="modal" data-bs-target="cancelModal">Cancel</button></td>
                    </tr>
                    </c:forEach>                    
                </tbody>
            </table>
        </div>
    </section>
<%@include file="../footers/footer2.jsp" %>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/js/bootstrap.min.js"
        integrity="sha512-ZvbjbJnytX9Sa03/AcbP/nh9K95tar4R0IAxTS2gh2ChiInefr1r7EpnVClpTWUEN7VarvEsH3quvkY1h0dAFg=="
        crossorigin="anonymous"></script>
    <script src="<c:url value='/resources/js/upcoming-service.js' />"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $('#example').DataTable({
                "dom": '<"top"i>rt<"bottom"flp><"clear">'
            });
        });
    </Script>
    <script type="text/javascript">
    $("a").on("click", function() {
    	  $("a").removeClass("active");
    	  $(this).addClass("active");
    	});
    </script>

</body>

</html>