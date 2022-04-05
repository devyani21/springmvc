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
<title>My Ratings</title>

<c:set var="usertypeid" value="${userinfo.user_type_id }" />
<c:set var="sr" value="${servicerequests }" />
<c:set var="u" value="${users }" />
<c:set var="sra" value="${srAddress }" />
<c:set var="spRating" value="${spRating }" />
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
	href="<c:url value='/resources/css/customer-dashboard.css' />" />
</head>

<body>
	<div class="wrapper">
		<c:if test="${usertypeid  == 1}">
			<%@ include file="../headers/customer-header.jsp"%>
		</c:if>
		<c:if test="${usertypeid == 2 }">
			<%@ include file="../headers/SP-header.jsp"%>
		</c:if>

		<%@ include file="../modals/rescheduleServiceModal.jsp"%>
		<%@ include file="../modals/rescheduleModal.jsp"%>
		<%@ include file="../modals/cancelModal.jsp"%>
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
			<div>
				<form method="get" action="my-ratings" id="myRatingForm">
					<label for="paymentStatus"> Rating </label> <select
						name="ratingType" id="ratingType">
						<option value="all"
							<c:if test="${typeSelect == 'all' }">selected</c:if>>All</option>
						<option value="verygood"
							<c:if test="${typeSelect == 'verygood' }">selected</c:if>>Very
							Good</option>
						<option value="good"
							<c:if test="${typeSelect == 'good' }">selected</c:if>>Good</option>
						<option value="average"
							<c:if test="${typeSelect == 'average' }">selected</c:if>>Average</option>
						<option value="poor"
							<c:if test="${typeSelect == 'poor' }">selected</c:if>>Poor</option>
					</select>
				</form>
			</div>

			<c:forEach var="rating" items="${ratings }">
				<div id="rating-div" class="row">
					<div class="col">
						<div>
						<c:forEach var="sr" items="${service_requests }" varStatus="i">
							<c:if test="${sr.service_req_id == rating.service_req_id }">
								${sr.service_id }
						</c:if>
						</c:forEach>
						</div>
						<div>
							<c:forEach var="u" items="${users }">
								<c:if test="${u.user_id == rating.rating_from }">
									<p style="text-transform: capitalize;">${u.first_name }
										${u.last_name }</p>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<div class="col-6" >
						<c:forEach var="sr" items="${service_requests }" varStatus="i">
							<c:if test="${sr.service_req_id == rating.service_req_id }">
								<div style="cursor: pointer;" data-bs-toggle="modal" data-bs-target="#rescheduleServiceModal" onClick="rescheduleService(${sr.service_req_id})">
									<img
										src="<c:url value='/resources/img/customer/calender-icon.png' />"
										alt="" class="calender-icon"><span><fmt:formatDate
											type="date" value="${sr.service_start_date}"
											pattern="dd/MM/yyyy" /></span>
								</div>
								<div style="cursor: pointer;" data-bs-toggle="modal" data-bs-target="#rescheduleServiceModal" onClick="rescheduleService(${sr.service_req_id})">
									<img
										src="<c:url value='/resources/img/customer/clock-icon.png' />"
										alt="" class="calender-icon"><span><span
										id="starttime${i.index }"></span>-<span
										id="endTime${i.index }"></span></span>
								</div>
							</c:if>
						</c:forEach>
					</div>

					<div class="col">
						<div>Ratings</div>
						<div>
							<c:if test="${rating.ratings == 0}">
								<span class="icon" id="icon1" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon2" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon3" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon4" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>
							</c:if>
							<c:if test="${rating.ratings == 1}">
								<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon2" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon3" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon4" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>
								<span>Below Average</span>
							</c:if>
							<c:if test="${rating.ratings == 2}">
								<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon2" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon3" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon4" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>
								<span>Poor</span>
							</c:if>
							<c:if test="${rating.ratings == 3}">
								<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon2" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon3" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon4" style="color: #e1e1e1">&bigstar;</span>
								<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>
								<span>Average</span>
							</c:if>
							<c:if test="${rating.ratings == 4}">
								<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon2" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon3" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon4" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>
								<span>Good</span>
							</c:if>
							<c:if test="${rating.ratings == 5}">
								<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon2" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon3" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon4" style="color: #ECB91C">&bigstar;</span>
								<span class="icon" id="icon5" style="color: #ECB91C">&bigstar;</span>
								<span> Very Good</span>
							</c:if>

						</div>
					</div>
					<div class="border-top custom-border" style="margin-bottom: 10px;"></div>
					<strong><div>Customer Comments</div></strong>
					<div>${rating.comments }</div>

				</div>
			</c:forEach>
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
    
    	$("#ratingType").on("change" , function(){
    		$("#myRatingForm").submit();
    	})
    	    
    </script>
	
	<script>
		$(document).ready(
				function() {

					<c:forEach var="sr" items="${service_requests }" varStatus="i">

					var d = new Date("${sr.service_start_date}" + " "
							+ "${sr.service_start_time}");
					console.log(d)
					var t1 = d.getHours() + "." + d.getMinutes();
					var var1 = d.getHours().toString();
					var var2 = d.getMinutes().toString();
					console.log(var1.padStart(2, "0") + ":"
							+ var2.padStart(2, "0"));
					$("#starttime${i.index}")
							.html(
									var1.padStart(2, "0") + ":"
											+ var2.padStart(2, "0"));
					var a = parseFloat("${sr.service_hours}");
					var b = parseFloat("${sr.extra_hours}");
					var totalTime = a + b;
					var dt1 = ((d.getHours() * 60) + d.getMinutes()) / 60;
					var dt2 = (dt1 + totalTime) * 60;
					var h1 = Math.floor(dt2 / 60);
					var m1 = dt2 % 60;
					if (m1 == 0) {
						var time2 = h1 + ":00	";
						$("#endTime${i.index}").html(time2);
					} else {
						var time2 = h1 + ":" + m1;
						$("#endTime${i.index}").html(time2);
					}

					</c:forEach>
				})
	</script>


	<script>
		function rescheduleService(id) {
			console.log(id);
			event.preventDefault();

			$
					.ajax({
						type : "GET",
						contentType : "application/json",
						url : "/helperland_springmvc/readservicerequestdetails/"
								+ id,
						crossDomain : true,
						success : function(data, textStatus, jqXHR) {
							console.log(data);
							$("#customebuttons").css("display","none");
							var d = new Date(data[0].service_start_date);
							console.log("d = "+ d);
							var date1 = d.getDate() + "/" + (d.getMonth() + 1)
									+ "/" + d.getFullYear();
							if (d.getMinutes() == 0) {
								var time1 = d.getHours() + ":00";
							} else {
								var time1 = d.getHours() + ":" + d.getMinutes();
							}
							var t1 = d.getHours() + "." + d.getMinutes();
							var totalTime = data[0].service_hours
									+ data[0].extra_hours;

							var dt1 = ((d.getHours() * 60) + d.getMinutes()) / 60;
							var dt2 = (dt1 + totalTime) * 60;

							var h1 = Math.floor(dt2 / 60);
							var m1 = dt2 % 60;

							if (m1 == 0) {
								var time2 = h1 + ":00	";
							} else {
								var time2 = h1 + ":" + m1;
							}

							$("#rservicestartdate").html(
									date1 + " " + time1 + "-" + time2);
							$("#rtotalservicetime").html(
									data[0].service_hours + data[0].extra_hours
											+ " hours");
							$("#rserviceid").html(data[0].service_id);
							$("#rtotalcost").html(data[0].total_cost + ",00 $");
							$("#rcomments").html(data[0].comments);

							if (data[0].has_pets == 0) {
								$("#rnopets")
										.html(
												"<i class='fa fa-close' style='font-size:25px;color:red'></i> I don't have pets at home.");
							} else {
								$("#rnopets")
										.html(
												"<i class='fa fa-check-circle' style='font-size:25px;color:green'></i> I have pets at home.");
							}

							var extraServices = " ";

							if (data[2].insidecabinets == 1) {
								extraServices = extraServices
										+ " Inside Cabinets, ";
							}
							if (data[2].interiorwindows == 1) {
								extraServices = extraServices
										+ " Interior Windows, ";
							}
							if (data[2].laundary == 1) {
								extraServices = extraServices
										+ " Inside Wash, ";
							}
							if (data[2].insidefridge == 1) {
								extraServices = extraServices
										+ " Inside Fridge, ";
							}
							if (data[2].insideoven == 1) {
								extraServices = extraServices
										+ " Inside Oven, ";
							}
							$("#rextras").html(extraServices);

							if (data[1].state != null) {
								$("#rserviceaddress").html(
										" " + data[1].address_line1 + " "
												+ data[1].address_line2 + ", "
												+ data[1].postal_code + " "
												+ data[1].city + " "
												+ data[1].state);
							}
							if (data[1].state == null) {
								$("#rserviceaddress").html(
										" " + data[1].address_line1 + " "
												+ data[1].address_line2 + ", "
												+ data[1].postal_code + " "
												+ data[1].city);
							}
							if (data[1].mobile != null) {
								$("#rphone").html(" " + data[1].mobile);
							}
							if (data[1].email != null) {
								$("#remail").html(" " + data[1].email);
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

	<script>
		function rescheduleServiceFun(id) {
			console.log(id);
			jQuery(document).ready(function($) {
				$("#rescheduleserviceform").submit(function(event) {
					event.preventDefault();
					rescheduleserviceformfun(id);
				});
			});
		}
		function rescheduleserviceformfun(id) {
			console.log(id);
			console.log($("#rescheduleserviceform").serialize());
			$.ajax({
				type : "POST",
				url : "/helperland_springmvc/service-reschedule/" + id,
				data : $("#rescheduleserviceform").serialize(),
				success : function(data, textStatus, jqXHR) {
					console.log("SUCCESS: ", data);
					location.reload();
					//document.getElementById('successmessage').innerHTML = 'successmessage';
					//$('#nav-profile-tab').click();
					//$("#editaddressmodalclose").click();
				},
				error : function(e) {
					console.log("ERROR: ", e);
					alert("some error occurred");
				},
				done : function(e) {
					console.log("Done");
				}
			});
		}
	</script>

	<script>
		function cancelServiceFun(id) {
			console.log(id);
			jQuery(document).ready(function($) {
				$("#cancelservicereqform").submit(function(event) {
					event.preventDefault();
					cancelserviceformfun(id);
				});
			});
		}

		function cancelserviceformfun(id) {
			console.log(id);
			console.log($("#cancelservicereqform").serialize());
			$.ajax({
				type : "POST",
				url : "/helperland_springmvc/service-cancel/" + id,
				data : $("#cancelservicereqform").serialize(),
				success : function(data, textStatus, jqXHR) {
					console.log("SUCCESS: ", data);
					location.reload();
					//document.getElementById('successmessage').innerHTML = 'successmessage';
					//$('#nav-profile-tab').click();
					//$("#editaddressmodalclose").click();
				},
				error : function(e) {
					console.log("ERROR: ", e);
					alert("some error occurred");
				},
				done : function(e) {
					console.log("Done");
				}
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
					$("#nservicestartdate").attr('min', datePattern);
					console.log(datePattern);
					$("#nservicestartdate").val(datePattern);
					var newdate = datePattern.slice(8, 10) + "/"
							+ datePattern.slice(5, 7) + "/"
							+ datePattern.slice(0, 4);
					console.log(newdate);
					//$("#servicestartdatevalue").html(newdate);

					document.getElementById('nservicestartdate')
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
										//$("#servicestartdatevalue").html(
										//newdate);
										//$("#servicedatetime").show();
										$("#nservicestartdate").val(
												newdatevalue);
									});

					//console.log($("select#servicestarttime").val());
					//$("#servicestarttimevalue").html(servicestarttime.value);

					//$("select#servicestarttime").change(function() {
					//$("#servicestarttimevalue").html(this.value);
					//})
				});
	</script>




</body>

</html>