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
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta http-equiv="x-ua-compatible" content="ie=edge" />
  <title>Admin | Service Request</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
  <!-- MDB -->
  <link rel="stylesheet" href="<c:url value='/resources/css/mdb.min.css' />" />
  <!-- Custom styles -->
  

  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/select/1.3.3/css/select.bootstrap5.min.css" />
  <link rel="stylesheet"
	href="<c:url value='/resources/css/admin.css' />" />

</head>

<body>
  <!--Main Navigation-->
  <header>
    <!-- Sidebar -->
    <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white">
      <div class="position-sticky">
        <div class="list-group list-group-flush mx-3 mt-4">
          <a href="service-requests" class="list-group-item list-group-item-action py-2 ripple active" aria-current="true">
            <span>Service Request Management</span>
          </a>
          <a href="admin-user-management" class="list-group-item list-group-item-action py-2 ripple"><span>User Management</span></a>
        </div>
      </div>
    </nav>
    <!-- Sidebar -->

    <!-- Navbar -->
    <nav id="main-navbar" class="navbar navbar-expand-lg navbar-light fixed-top">
      <!-- Container wrapper -->
      <div class="container-fluid">
        <!-- Toggle button -->
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#sidebarMenu"
          aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fas fa-bars"></i>
        </button>

        <!-- Brand -->
        <a class="navbar-brand" href="#">
          <span class="helperland">helperland</span>
        </a>

        <!-- Right links -->
        <ul class="navbar-nav ms-auto d-flex flex-row">

          <!-- Avatar -->
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center" href="#"
              id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
              <img src="<c:url value='/resources/img/customer/avatar.png' />" class="rounded-circle" height="22"
                alt="" loading="lazy" /><span class="james-smith" style="text-transform:capitalize;">${userinfo.first_name } ${userinfo.last_name }</span>
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="#">My profile</a></li>
              <li><a class="dropdown-item" href="#">Settings</a></li>
              <li><a class="dropdown-item" href="#">Logout</a></li>
            </ul>
          </li>
          <li class="nav-item dropdown mt-1">
            <a class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center" href="#"
              id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
              <i class="fa fa-power-off"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="#">My profile</a></li>
              <li><a class="dropdown-item" href="#">Settings</a></li>
              <li><a class="dropdown-item" href="logout">Logout</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!-- Container wrapper -->
    </nav>
    <!-- Navbar -->
  </header>
  <!--Main Navigation-->
  <%@ include file="../modals/EditRescheduleModal.jsp" %>
  <%@ include file="../modals/cancelModal.jsp" %>

  <!--Main layout-->
  <main style="margin-top: 58px">
    <div class="container" style="margin-left: 25px; margin-right: 25px;">
      <div class="row">
        <div class="col-lg-6 col">
          <span class="User-Management">
            Service Requests
          </span>
        </div>
        <div class="col-lg-6 col">
          <div>
          <button type="button" class="btn btn-primary add-new-user">add new user</button>
          </div>
        </div>
      </div>
      
      <form action="service-requests" method="post" name="service-request-filter" id="service-request-filter">
      
      <div class="row" style="margin-top: 20px; margin-bottom: 30px">
        
        <input name="service_id" type="text" class="form-control" placeholder="Service Id" aria-label="service_id" aria-describedby="addon-wrapping" style="width: 180px;margin-left:10px;">
        <select name="customer" class="form-select user-name-select" aria-label="Default select example">
          <option selected disabled>Customer</option>
          <!--  <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>-->
          <c:forEach var="u" items="${usersCust }">
              <option value="${u.user_id }">${u.first_name } ${u.last_name }</option>
          </c:forEach>
        </select>
        <select name="sp" class="form-select user-name-select" aria-label="Default select example">
          <option selected disabled>Service Provider</option>
          <!-- <option value="1">One</option>
          <option value="2">Two</option>
          <option value="3">Three</option>-->
          <c:forEach var="u" items="${usersSP }">
               <option value="${u.user_id }">${u.first_name } ${u.last_name }</option>
          </c:forEach>
        </select>
        <input name="from_date" placeholder="From Date" class="date-picker" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="from_date" style="width: 180px;margin-left:10px;"/>
        <input name="to_date" placeholder="To Date" class="date-picker" type="text" onfocus="(this.type='date')" onblur="(this.type='text')" id="to_date" style="width: 180px;margin-left:10px;"/>
        <div>
          <button type="submit" class="btn btn-primary search-button" onClick="servicerequestfilterfun();">search</button>
         </div> 
        <div>
          <button type="reset" class="btn btn-primary clear-button">Clear</button>
         </div> 
      </div>
      <div class="row" style="margin-top: 20px;margin-bottom: 30px;">
      	<div class="form-check" style="margin-left:17px;width:10%;margin-top:8px">
  			<input name="has_issues" class="form-check-input" type="checkbox" value="0" id="flexCheckDefault">
  				<label class="form-check-label" for="flexCheckDefault">
    				Has issue
  				</label>
		</div>
		<select name="status" class="form-select user-name-select" aria-label="Default select example">
	          <option selected disabled>Status</option>
	          <option value="0">Pending</option>
              <option value="1">Completed</option>
              <option value="2">Cancelled</option>
              <option value="3">Accepted</option>
              <option value="4">Rescheduled</option>
        </select>
		
      </div>
      </form>
      
      <table id="example" class="table" style="width:100%">
        <thead>
            <tr>
                <th>Service ID</th>
                <th>Service Date</th>
                <th>Customer Details</th>
                <th>Service Provider</th>
                <th>Status</th>
                <th>Payment</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="sr" items="${service_requests }" varStatus="i">
              <tr>
                <td>${sr.service_id }</td>
                <td href="#serviceDetailsPopup" data-bs-toggle="modal" data-srid="${sr.service_req_id }" onclick="myFunction($(this).attr('data-srid'))">
                  <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                      class="calender-icon"><span><fmt:formatDate type = "date" value = "${sr.service_start_date}" pattern="dd/MM/yyyy"/></span></div>
                  <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                      class="calender-icon"><span><span id="starttime${i.index }"></span>-<span id="endTime${i.index }"></span></span></div>
                </td>
                <td>
                  <div>
                  <img src="<c:url value='/resources/img/customer/house-icon.png' />" alt="" class="calender-icon" style="margin-top:-40px;width:22px;height:22px;"><span style="display:inline-block;">
                  <div style="text-transform:capitalize;">
                  <c:forEach var="u" items="${users }">
                       <c:if test="${u.user_id == sr.user_id}"> ${u.first_name } ${u.last_name }</c:if>
                    </c:forEach>
                    </div>
                  <c:forEach var="sra" items="${srAddress }">
	                                            		<c:if test="${sr.service_req_id == sra.service_req_id }">
	                                            			${sra.address_line1 } ${sra.address_line2 } 
	                                            			<div>${sra.postal_code } ${sra.city }</div>
	                                            		</c:if>
	                                </c:forEach>
                  </span>
                </div></td>
                <td><div style="display: inline-block; margin-top: 17px">
                	<c:forEach var="u" items="${users }">
										<c:if test="${u.user_id == sr.service_provider_id}">
											<img src="<c:url value='/resources/img/customer/cap.png' />"
												class="cap">
										</c:if>
					</c:forEach>
                </div>
                <div style="display:block; margin-left:35px; margin-top:-40px">
                <c:forEach var="u" items="${users }">
										<c:if test="${u.user_id == sr.service_provider_id}">${u.first_name } ${u.last_name }
		                                        		</c:if>
				</c:forEach>
                    <div>
                        <c:forEach items="${spRating}" var="spRating">
													        <c:if test="${spRating.key == sr.service_provider_id }">
													        	<c:if test="${spRating.value == 0}">
													        		<span class="icon" id="icon1" style="color: #e1e1e1">&bigstar;</span>
													        		<span class="icon" id="icon2" style="color: #e1e1e1">&bigstar;</span>
							                                    	<span class="icon" id="icon3" style="color: #e1e1e1">&bigstar;</span>
							                                    	<span class="icon" id="icon4" style="color: #e1e1e1">&bigstar;</span>
				                                    				<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>	
													        	</c:if>	
													        	<c:if test="${spRating.value == 1}">
													        		<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
													        		<span class="icon" id="icon2" style="color: #e1e1e1">&bigstar;</span>
							                                    	<span class="icon" id="icon3" style="color: #e1e1e1">&bigstar;</span>
							                                    	<span class="icon" id="icon4" style="color: #e1e1e1">&bigstar;</span>
				                                    				<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>	
													        	</c:if>	
													        	<c:if test="${spRating.value == 2}">
													        		<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
													        		<span class="icon" id="icon2" style="color: #ECB91C">&bigstar;</span>
							                                    	<span class="icon" id="icon3" style="color: #e1e1e1">&bigstar;</span>
							                                    	<span class="icon" id="icon4" style="color: #e1e1e1">&bigstar;</span>
				                                    				<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>	
													        	</c:if>	
													        	<c:if test="${spRating.value == 3}">
													        		<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
													        		<span class="icon" id="icon2" style="color: #ECB91C">&bigstar;</span>
							                                    	<span class="icon" id="icon3" style="color: #ECB91C">&bigstar;</span>
							                                    	<span class="icon" id="icon4" style="color: #e1e1e1">&bigstar;</span>
				                                    				<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>	
													        	</c:if>	
													        	<c:if test="${spRating.value == 4}">
													        		<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
													        		<span class="icon" id="icon2" style="color: #ECB91C">&bigstar;</span>
							                                    	<span class="icon" id="icon3" style="color: #ECB91C">&bigstar;</span>
							                                    	<span class="icon" id="icon4" style="color: #ECB91C">&bigstar;</span>
				                                    				<span class="icon" id="icon5" style="color: #e1e1e1">&bigstar;</span>	
													        	</c:if>	
													        	<c:if test="${spRating.value == 5}">
													        		<span class="icon" id="icon1" style="color: #ECB91C">&bigstar;</span>
													        		<span class="icon" id="icon2" style="color: #ECB91C">&bigstar;</span>
							                                    	<span class="icon" id="icon3" style="color: #ECB91C">&bigstar;</span>
							                                    	<span class="icon" id="icon4" style="color: #ECB91C">&bigstar;</span>
				                                    				<span class="icon" id="icon5" style="color: #ECB91C">&bigstar;</span>	
													        	</c:if>	
			                                                	<p class="mb-0">${spRating.value }</p>
													        </c:if>
													    </c:forEach>
                    </div>
                </div></td>
                
                <td>
                <c:if test="${sr.status == 0 }">
                	<button type="button" class="btn btn-warning">New</button>
                </c:if>
                <c:if test="${sr.status == 1 }">
                	<button type="button" class="btn btn-success">Completed</button>
                </c:if>
                <c:if test="${sr.status == 2 }">
                	<button type="button" class="btn btn-danger">Cancelled</button>
                </c:if>
                <c:if test="${sr.status == 3 }">
                	<button type="button" class="btn btn-primary">Accepted</button>
                </c:if>
                <c:if test="${sr.status == 4 }">
                	<button type="button" class="btn btn-warning">Rescheduled</button>
                </c:if>
                
                </td>
                <td>
                	<span class="payment"> <span class="text-style-1">$
								</span>${sr.total_cost }
							</span>
                </td>
                <td><a class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center" href="#"
                    id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                    <i class="bi bi-three-dots-vertical"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink"><!-- onclick ="editDetailsFunction(${sr.service_req_id})" -->
                    <li><button class="dropdown-item" <c:if test="${sr.status == 1 || sr.status == 2 }">disabled</c:if> data-bs-toggle="modal" data-bs-target="#editReschedule" onclick ="editDetailsFunction(${sr.service_req_id})">Edit & Reschedule</button></li>
                    <li><button class="dropdown-item" <c:if test="${sr.status == 1 || sr.status == 2 }">disabled</c:if> data-bs-toggle="modal" data-bs-target="#cancelModal" onClick="cancelServiceFun(${sr.service_req_id})" >Cancel SR by Cust</button></li>
                  </ul></td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
    </div>
    
    <div class="serviceDetailsPopUp">

            <div class="modal fade" id="serviceDetailsPopup" aria-hidden="true" aria-labelledby="serviceDetailsPopupLabel" tabindex="-1">
                <div class="modal-dialog modal-dialog-centered vertical-align-center">
                    <div class="modal-content">
                        <!-- <div class="modal-body"> -->
                            <div class="modal-header">
                                <h5 class="modal-title" id="serviceDetailsPopupLabel">Service Details</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                        <div class="modal-body d-flex serviceDetailsPopupModal p-2">
                            <div class="serviceModalLeft">
                                <h5 id="sdDate"> </h5>
                                <p><b>Duration : </b>&nbsp<span id="sdDuration"></span></p>

                                <hr>

                                <p><b>Service Id:</b>&nbsp<span id="sdId"></span></p>
                                <p><b>Extras:</b><span id="sdExtra"></span></p>
                                <p><b>Net Amount:</b> <span class="table_payment fw-bolder" id="sdAmount"></span> </p>
                                
                                <hr>
                                
                                <p><b>Service Address:</b><span id="sdAddress"></span></p>
                                <p><b>Billing Address: </b>Same as cleaning Address</p>
                                <p><b>Phone:</b> +91 <span id="sdPhone"></span></p>
                                <p><b>Email:</b><span id="sdEmail"></span></p>
                                
                                <hr>
                                
                                <p><b>Comments</b></p>
                                <div>
                                    <p id="sdComments"></p>
                                </div>
                                <p id="sdPets"></p>
                                
                                <hr>
                                
                            </div>
                            <div class="serviceModalRight">
                                <h5>Service Provider Details</h5>
                                <div class="sp_block justify-content-between align-items-center" id="spDetailsRight">
                                    <div style="height: 64px; width: 64px;" class="sp_icon p-0 d-flex align-items-center justify-content-center rounded-circle">
                                        <img id="serviceModalIcon" height="64" width="64">
                                    </div>
                                    <div>
                                        <p class="sp_name mb-0" id="sdServiceProvider"></p>
                                        <div id="ratingModelAvgStars">
	                                    	<span class="icon" id="icon1d">&bigstar;</span>
	                                    	<span class="icon" id="icon2d">&bigstar;</span>
	                                    	<span class="icon" id="icon3d">&bigstar;</span>
	                                    	<span class="icon" id="icon4d">&bigstar;</span>
	                                    	<span class="icon" id="icon5d">&bigstar;</span>
	                                    </div>
                                    </div>
                                </div>
                                <p class="mb-0" id="sdTotalCleanings"></p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            </div>
    
  </main>
  <!--Main layout-->
  <!-- MDB -->
  <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>-->
    <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js" crossorigin="anonymous"></script>
  
  <script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/js/bootstrap.min.js"
		integrity="sha512-ZvbjbJnytX9Sa03/AcbP/nh9K95tar4R0IAxTS2gh2ChiInefr1r7EpnVClpTWUEN7VarvEsH3quvkY1h0dAFg=="
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
  <script type="text/javascript" src="<c:url value='/resources/js/mdb.min.js' />"></script>
  <!-- Custom scripts -->
  <!--  <script type="text/javascript" src="<c:url value='/resources/js/admin.js' />"></script>-->
    <script type="text/javascript">
      $(document).ready(function () {
        $('#example').DataTable({
          "dom": '<"top"i>rt<"bottom"flp><"clear">'
        });
      });
    </Script>
    
    
    <script>
    
    		
    		<c:forEach var="sr" items="${service_requests }" varStatus="i">
    			
	    		var d = new Date("${sr.service_start_date}"+" "+"${sr.service_start_time}");
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
					console.log(time2);
				}
				else{
					var time2 = h1 + ":" + m1;
					$("#endTime${i.index}").html(time2);
					console.log(time2);
				}
    			
    		</c:forEach>
    	
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
										var newdatevalue = (this.value).slice(
												0, 4)
												+ "-"
												+ (this.value).slice(5, 7)
												+ "-"
												+ (this.value).slice(8, 10);
										$("#servicestartdatevalue").html(
												newdate);
										$("#servicedatetime").show();
										$("#servicestartdate")
												.val(newdatevalue);
									});

					console.log($("select#servicestarttime").val());
					$("#servicestarttimevalue").html(servicestarttime.value);

					$("select#servicestarttime").change(function() {
						$("#servicestarttimevalue").html(this.value);
					})
				});
		
		$("#from_date , #to_date").on("change" , function(){
			console.log($("#from_date").val());
			console.log($("#to_date").val());
			
			if($("#to_date").val() == "" && $("#from_date").val != null){
				$("#to_date").attr("required" , true);
			}
			if($("#from_date").val() == "" && $("#to_date").val != null){
				$("#from_date").attr("required" , true);
			}
				
		})
	</script>
	
	
	
	<script type="text/javascript">
	$("#servicestartdate , #servicestarttime").on(
			"change",
			function() {
				var serviceDate = $("#servicestartdate").val();
				var serviceTime = $("#servicestarttime").val();
				var date = moment(serviceDate + ' ' + serviceTime).format(
						"YYYY-MM-DD HH:mm:ss.SSS");
				var sdate = new Date(date);
				console.log(date);
				$("#service_start_date").val(sdate);
			});

	
	</script>
    
    
    <script>
    		function cancelServiceFun(id){
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
    			$
    					.ajax({
    						type : "POST",
    						url : "/helperland_springmvc/service-cancel/"+id,
    						data : $("#cancelservicereqform").serialize(),
    						success : function(data,textStatus,jqXHR) {
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
    
		function editDetailsFunction(id){
			
			$('#rescheduleServiceReqId').val(id);
			console.log($('#rescheduleServiceReqId').val());
			
			$.ajax({
				url : "/helperland_springmvc/edit-details-data/"+id,
				type : "GET",
				contentType : "application/json",
				success : function(data) {
					console.log("edit-details-function:- "+data);
					console.log("success");
					$("#editAddress1").val(data[1].address_line1);
					$("#editAddress2").val(data[1].address_line2);
					$("#editPC").val(data[1].postal_code);
					$("#editCity").val(data[1].city);
					
					var dtStartMoment = moment(data[0].service_start_date).format("YYYY-MM-DD HH:mm:ss.SSS");
					var dtStart = new Date(dtStartMoment);
					
					console.log(dtStart);
					
					$("#service_start_date").val(dtStart);
				},
				error : function(data) {
					console.log("error");
				}
			})
			
		}
		
		$("#editServiceForm").on("submit" , function(e){
			console.log($(this).serialize());
			e.preventDefault();
    		$.ajax({
				url : "edit-service",
				type : "POST",
				data : $(this).serialize(), 
				success : function(data) {
					console.log(data);
					if(data == "conflict"){
						$("#conflictError").html("Another service request has already been assigned to this service provider which has time overlap with this service request. You can’t pick this one!");
					}
					else{
						location.reload();
					}
					
				},
				error : function(data) {
					console.log(data);
					alert("some error occurred");
				}
			})
    	})
    
    </script>
    
    <script>
		function myFunction(id){
			console.log(id);
			$.ajax({
				url : "service-details-data",
				type : "POST",
				data : id,
				contentType : "application/json",
				success : function(data) {
						console.log(data);
						
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
						
						
						$("#sdDate").html(date1 +" "+ time1 + "-" + time2); 
						$("#sdDuration").html(data[0].service_hours + data[0].extra_hours + " hours");
						$("#sdId").html(data[0].service_id);
						$("#sdAmount").html(data[0].total_cost + ",00 $");
						$("#sdComments").html(data[0].comments);
						
						if(data[0].has_pets == 0){
							$("#sdPets").html("I don't have pets at home.");
						}
						else{
							$("#sdPets").html("I have pets at home.");	
						}
						
						var extraServices = " ";
						
						console.log(data[2].cabinet);
						
						if(data[2].cabinet == 1){
							extraServices = extraServices + " Inside Cabinets, ";
						}
						if(data[2].windows == 1){
							extraServices = extraServices + " Interior Windows, ";
						}
						if(data[2].laundry == 1){
							extraServices = extraServices + " Inside Wash, ";
						}
						if(data[2].refrigerator == 1){
							extraServices = extraServices + " Inside Fridge, ";
						}
						if(data[2].oven == 1){
							extraServices = extraServices + " Inside Oven, ";
						}
						console.log(extraServices);
						$("#sdExtra").html(extraServices);
						
						if(data[1].state != null){
							$("#sdAddress").html(" "+data[1].address_line1 + " " + data[1].address_line2 + ", "+data[1].postal_code +" "+data[1].city+" "+data[1].state);
						}
						if(data[1].state == null){
							$("#sdAddress").html(" "+data[1].address_line1 + " " + data[1].address_line2 + ", "+data[1].postal_code +" "+data[1].city);
						}
						if(data[1].mobile != null){
							$("#sdPhone").html(" "+data[1].mobile);
						}
						if(data[1].email != null){
							$("#sdEmail").html(" "+data[1].email);
						}
						
						if(data[0].user_id == data[0].service_provider_id){
							$("#spDetailsRight").hide();
							$("#sdTotalCleanings").hide();
						}
						else{
							$("#sdTotalCleanings").show();
							$("#spDetailsRight").show();
							$("#sdServiceProvider").html(data[3].first_name + " " + data[3].last_name);
							$("#serviceModalIcon").attr("src" , "/helperland/resources/assets/custDash/"  + data[3].user_profile_picture+ ".png "   );
						}
						
						if(data[4] == 0){
							$("#icon1d ,#icon2d , #icon3d , #icon4d , #icon5d").css("color" , "#e1e1e1");
						}
						if(data[4] == 1){
							$("#icon2d , #icon3d , #icon4d , #icon5d").css("color" , "#e1e1e1");
							$("#icon1d").css("color" , "#ECB91C");
							
						}
						if(data[4] == 2){
							$("#icon3d , #icon4d , #icon5d").css("color" , "#e1e1e1");
							$("#icon1d , #icon2d").css("color" , "#ECB91C");
						}
						if(data[4] == 3){
							$("#icon4d , #icon5d").css("color" , "#e1e1e1");
							$("#icon1d , #icon2d , #icon3d").css("color" , "#ECB91C");
						}
						if(data[4] == 4){
							$("#icon5d").css("color" , "#e1e1e1");
							$("#icon1d , #icon2d , #icon3d , #icon4d").css("color" , "#ECB91C");
						}
						
						$("#sdTotalCleanings").html(data[5] + " cleanings");
						
						$("#rescheduleBtnModel").attr('data-spID' , data[0].service_req_id);
						$("#cancelBtnModel").attr('data-spID' , data[0].service_req_id);
						
						console.log("fdsfd" + $("#rescheduleBtnModel").attr('data-spID'));
				},
				error : function(xhr, textStatus, xml) {
					console.log("error");
					console.log(xhr);
					console.log(textStatus);
					console.log(xml);
				}
			})
			
		}
	
	</script>
	<script>
	function servicerequestfilterfun(){
		jQuery(document).ready(function($) {
			$("#service-request-filter").submit(function(event) {
				console.log($("#service-request-filter").serialize());
			});
		});
	}
	</script>
    

</body>

</html>