<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Service History</title>

<c:set var="usertypeid" value="${userinfo.user_type_id }" />
<c:set var="sr" value="${servicerequests }" />
<c:set var="u" value="${users }" />
<c:set var="sra" value="${srAddress }" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/css/bootstrap.min.css"
	integrity="sha512-thoh2veB35ojlAhyYZC0eaztTAUhxLvSZlWrNtlV01njqs/UdY3421Jg7lX0Gq9SRdGVQeL8xeBp9x1IPyL1wQ=="
	crossorigin="anonymous" />

<link rel="stylesheet"
	href="https://mdbootstrap.com/previews/mdb-ui-kit/sidenav/css/mdb.min.css" />
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
<link rel="stylesheet"
	href="https://cdn.datatables.net/select/1.3.3/css/select.bootstrap5.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="<c:url value='/resources/css/customer-service-history.css' />" />
</head>

<body>
	<div class="wrapper">
		<c:if test="${usertypeid  == 1}">
			<%@ include file="../headers/customer-header.jsp"%>
		</c:if>
		<c:if test="${usertypeid == 2 }">
			<%@ include file="../headers/SP-header.jsp"%>
		</c:if>

		<%@ include file="../modals/rescheduleServiceModal.jsp" %>
		<%@ include file="../modals/rescheduleModal.jsp" %>
		<%@ include file="../modals/cancelModal.jsp" %>
		<%@ include file="../modals/rateSPModal.jsp" %>
		<section class="welcome">
			<div class="container">
				<div class="row">
					<div class="Welcome-Sandip">
						<span style="text-transform: capitalize;">Welcome,
							${userinfo.first_name}!</span>
					</div>
				</div>
			</div>
	</div>
	</section>

	<section>
		<div class="container table-container w-75">
			<table id="example" class="table" style="width: 100%">
				<thead>
					<tr>
						<th>Service Id</th>
						<th>Service Details</th>
						<th>Customer Details</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="sr" items="${servicerequests}" varStatus="i">
						<tr data-bs-toggle="modal" data-bs-target="#rescheduleServiceModal" onClick="rescheduleService(${sr.service_req_id})">
							<td>${sr.service_id }</td>
							<td>
								<div>
									<img
										src="<c:url value='/resources/img/customer/calender-icon.png' />"
										alt="" class="calender-icon"><span><fmt:formatDate
											type="date" value="${sr.service_start_date}"
											pattern="dd/MM/yyyy" /></span>
								</div>
								<div>
									<img
										src="<c:url value='/resources/img/customer/clock-icon.png' />"
										alt="" class="calender-icon"><span><span id="starttime${i.index }"></span>
										- <span id="endTime${i.index }"></span></span>
								</div>
							</td>
							<td>
								<div style="display: inline-block; margin-top: 20px">
									<c:forEach var="u" items="${users }">
										<c:if test="${u.user_id == sr.user_id}">
											<img src="<c:url value='/resources/img/customer/house-icon.png' />"
												class="cap">
										</c:if>
									</c:forEach>
								</div>
								<div
									style="display: block; margin-left: 35px; margin-top: -40px;text-transform: capitalize">
									<c:forEach var="u" items="${users }">
										<c:if test="${u.user_id == sr.user_id}">${u.first_name } ${u.last_name }
		                                        		</c:if>
									</c:forEach>
									<div>
									<c:forEach var="sra" items="${srAddress }">
	                                            		<c:if test="${sr.service_req_id == sra.service_req_id }">
	                                            			${sra.address_line1 } ${sra.address_line2 } 
	                                            			<div>${sra.postal_code } ${sra.city }</div>
	                                            		</c:if>
	                                </c:forEach>
	                                </div>
								</div>
								

							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</section>
	<%@include file="../footers/footer2.jsp"%>
	</div>
	<!--<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>-->
    <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/js/bootstrap.min.js"
		integrity="sha512-ZvbjbJnytX9Sa03/AcbP/nh9K95tar4R0IAxTS2gh2ChiInefr1r7EpnVClpTWUEN7VarvEsH3quvkY1h0dAFg=="
		crossorigin="anonymous"></script>
	<script src="<c:url value='/resources/js/upcoming-service.js' />"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#example').DataTable({
				"dom" : '<"top"i>rt<"bottom"flp><"clear">'
			});
		});
	</Script>
	
	<script>
    
    	$(document).ready(function() {
    		
    		<c:forEach var="sr" items="${servicerequests }" varStatus="i">
    			
	    		var d = new Date("${sr.service_start_date}" + " " + "${sr.service_start_time}");
				var t1 = d.getHours()+"."+d.getMinutes();
				var var1 = d.getHours().toString();
				var var2 = d.getMinutes().toString();
				console.log(var1.padStart(2,"0") + ":" + var2.padStart(2,"0"));
				$("#starttime${i.index}").html(var1.padStart(2,"0") + ":" + var2.padStart(2,"0"));
				var a = parseFloat("${sr.service_hours}") ;  
				var b = parseFloat("${sr.extra_hours}");
				var totalTime = a+b ; 
				var dt1 = ((d.getHours() * 60) + d.getMinutes()) / 60;
				var dt2 = (dt1 + totalTime) * 60;
				var h1 = Math.floor(dt2 / 60);
				var m1 = dt2 % 60;
				if(m1==0){
					var time2 = h1 + ":00	";	
					$("#endTime${i.index}").html(time2);
				}
				else{
					var time2 = h1 + ":" + m1;
					$("#endTime${i.index}").html(time2);
				}
    			
    		</c:forEach>
    	})
    	
    </script>
	
	
    	
    	<script>
    	 function rescheduleService(id){
    		console.log(id);
 			event.preventDefault();
 			
 			$.ajax({
 				type : "GET",
 				contentType : "application/json",
 				url : "/helperland_springmvc/readservicerequestdetails/"+id,
 				crossDomain : true,
 				success : function(data,textStatus,jqXHR) {
 					console.log(data);
 					$("#customebuttons").css("display","none");
 					var d = new Date(data[0].service_start_date);
					var date1 = d.getDate() + "/" + (d.getMonth() + 1 ) + "/" + d.getFullYear();
					if(d.getMinutes() == 0){
						var time1 = d.getHours() + ":00" ;
					}
					else{
						var time1 = d.getHours() + ":" + d.getMinutes();	
					}
					var t1 = d.getHours()+"."+d.getMinutes();
					var totalTime = data[0].service_hours + data[0].extra_hours;
					
					var dt1 = ((d.getHours() * 60) + d.getMinutes()) / 60;
					var dt2 = (dt1 + totalTime) * 60;
					
					var h1 = Math.floor(dt2 / 60);
					var m1 = dt2 % 60;
					
					if(m1==0){
						var time2 = h1 + ":00	";		
					}
					else{
						var time2 = h1 + ":" + m1;
					}
					
					
					$("#rservicestartdate").html(date1 +" "+ time1 + "-" + time2); 
					$("#rtotalservicetime").html(data[0].service_hours + data[0].extra_hours + " hours");
					$("#rserviceid").html(data[0].service_id);
					$("#rtotalcost").html(data[0].total_cost + ",00 $");
					$("#rcomments").html(data[0].comments);
					
					if(data[0].has_pets == 0){
						$("#rnopets").html( "<i class='fa fa-close' style='font-size:25px;color:red'></i> I don't have pets at home.");
					}
					else{
						$("#rnopets").html("<i class='fa fa-check-circle' style='font-size:25px;color:green'></i> I have pets at home.");	
					}
					
					var extraServices = " ";
					
					if(data[2].insidecabinets == 1){
						extraServices = extraServices + " Inside Cabinets, ";
					}
					if(data[2].interiorwindows == 1){
						extraServices = extraServices + " Interior Windows, ";
					}
					if(data[2].laundary == 1){
						extraServices = extraServices + " Inside Wash, ";
					}
					if(data[2].insidefridge == 1){
						extraServices = extraServices + " Inside Fridge, ";
					}
					if(data[2].insideoven == 1){
						extraServices = extraServices + " Inside Oven, ";
					}
					$("#rextras").html(extraServices);
					
					if(data[1].state != null){
						$("#rserviceaddress").html(" "+data[1].address_line1 + " " + data[1].address_line2 + ", "+data[1].postal_code +" "+data[1].city+" "+data[1].state);
					}
					if(data[1].state == null){
						$("#rserviceaddress").html(" "+data[1].address_line1 + " " + data[1].address_line2 + ", "+data[1].postal_code +" "+data[1].city);
					}
					if(data[1].mobile != null){
						$("#rphone").html(" "+data[1].mobile);
					}
					if(data[1].email != null){
						$("#remail").html(" "+data[1].email);
					}
 					//$("#address_line1").val(data.address_line1);
 					//$("#address_line2").val(data.address_line2);
 					//$("#postal_code").val(data.postal_code);
 					//$("#mobile").val(data.mobile);
 					//$("#city").val(data.city);
 				},
 				error : function(xml, textStatus, xhr) {
 					alert("Some error occured");
 				}
 			});
    	 }
    	
    	</script>

</body>

</html>