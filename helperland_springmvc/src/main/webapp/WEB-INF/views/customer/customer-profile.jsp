<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Customer Profile</title>
    <c:set var="usertypeid" value="${userinfo.user_type_id }"/>
    
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/css/bootstrap.min.css"
        integrity="sha512-thoh2veB35ojlAhyYZC0eaztTAUhxLvSZlWrNtlV01njqs/UdY3421Jg7lX0Gq9SRdGVQeL8xeBp9x1IPyL1wQ=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <link rel="stylesheet" href="https://mdbootstrap.com/previews/mdb-ui-kit/sidenav/css/mdb.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/select/1.3.3/css/select.bootstrap5.min.css" />

    <link rel="stylesheet" href="<c:url value='/resources/css/customer-profile.css' />" />
</head>

<body>
    <div class="wrapper">
        <c:if test="${usertypeid  == 1}">
    <%@ include file="../headers/customer-header.jsp" %>
		</c:if>
	<c:if test="${usertypeid == 2 }">
	<%@ include file="../headers/SP-header.jsp" %>
		</c:if>
		
	<%@ include file="../modals/editAddressModal.jsp" %>
	<%@ include file="../modals/deleteAddressModal.jsp" %>
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
            <nav>
                <div class="nav nav-tabs nav-justified mb-3" id="nav-tab" role="tablist">
                    <a class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" href="#nav-home" role="tab"
                        aria-controls="nav-home" aria-selected="true">My Details</a>
                    <a class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" href="#nav-profile" role="tab"
                        aria-controls="nav-profile" aria-selected="false" id="realtimeaddress">My Addresses</a>
                    <a class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" href="#nav-contact" role="tab"
                        aria-controls="nav-contact" aria-selected="false">Change Password</a>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                    <form action="personal-details" method="post" id="personaldetailsform">
                        <div class="mb-3">
                            <div class="row" id="detailsrow">
                                <div class="col-lg-4 col">
                                    <label for="exampleInputEmail1" class="form-label">FirstName</label>
                                    <input name="first_name" type="text" class="form-control mb-2 detailsform" id="exampleInputEmail1"
                                        aria-describedby="emailHelp">

                                    <label for="exampleInputEmail1" class="form-label">Mobile Number</label>
                                    <input name="mobile" type="text" class="form-control mb-2 detailsform" id="exampleInputEmail1"
                                        aria-describedby="emailHelp">
                                </div>
                                <div class="col-lg-4 col">
                                    <label for="exampleInputEmail1" class="form-label">LastName</label>
                                    <input name="last_name" type="text" class="form-control mb-2 detailsform" id="exampleInputEmail1"
                                        aria-describedby="emailHelp">

                                    <label for="exampleInputEmail1" class="form-label">Date of Birth</label>
                                    <input name="date_of_birth" type="date" class="form-control mb-2 detailsform" id="exampleInputEmail1"
                                        aria-describedby="emailHelp">
                                </div>
                                <div class="col-lg-4 col">
                                    <label for="exampleInputEmail1" class="form-label">Email</label>
                                    <input name="email" type="email" class="form-control mb-2 detailsform" id="exampleInputEmail1"
                                        aria-describedby="emailHelp">
                                </div>
                                <div>
                                    <hr class="detailsrow">
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary save">Save</button>
                    </form>
                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <div>
                        <table class="table table-striped table-hover">
                            <div id="showadd">
                            
                            </div>
                          </table>
                    </div>
                    <div class="mb-4 mt-3">

								<form id="useraddressform" class="custom-form mb-4"
									action="user-address" method="post">

									<div class="row mt-2">
										<div class="col-md-6">

											<div class=" custom-address-form"
												style="float: right;">
												<label class="form-label" for="addressline1">Street
													Name</label> <input name="address_line1" type="text"
													id="addressline1" class="form-control form-control-lg mb-2 "
													placeholder="Street Name" />
											</div>

										</div>
										<div class="col-md-6">

											<div>
												<label class="form-label" for="addressline2">House
													No</label> <input type="text" id="addressline2"
													name="address_line2"
													class="form-control form-control-lg custom-address-form mb-2"
													placeholder="House No" />

											</div>

										</div>
									</div>

									<div class="row">
										<div class="col-md-6">

											<div class="custom-address-form"
												style="float: right;">
												<label class="form-label" for="postalcode">Postal
													Code</label> <input type="text" id="postalcode" name="postal_code"
													class="form-control form-control-lg mb-2"
													placeholder="Postal Code" />

											</div>

										</div>

										<div class="col-md-6">

											<div>
												<label class="form-label" for="city">City</label> <input
													type="text" id="city" name="city"
													class="form-control form-control-lg custom-address-form mb-2"
													placeholder="City" />

											</div>

										</div>

									</div>

									<div class="row">
										<div class="col-md-6" style="margin-left: 77px;">
											<label class="form-label" for="mobile">Phone No</label>
											<div class="input-group">

												<span class="input-group-text">+49</span> <input type="tel"
													id="mobile" name="mobile"
													class="form-control form-control-lg phone"
													placeholder="Phone Number" />

											</div>
											<!--<input type="hidden" id="userid" name="user_id"
												value="${userinfo.user_id }" /> <input type="hidden"
												id="useremail" name="email" value="${userinfo.email }" /> <input
												type="hidden" id="type" name="type"
												value="${userinfo.user_type_id }" />-->
										</div>
									</div>

									<div class="mb-4 mt-4" style="margin-left: 77px;">
										<input class="btn btn-primary btn-lg save" type="submit"
											value="Submit" id="useraddressformsubmit"/> <input
											class="btn btn-primary btn-lg btn-cancel save"
											value="cancel" id="useraddressformcancel" onclick="showform()"/>
									</div>

								</form>
								<button class="btn btn-outline-success add-new-address mb-3"
									id="addaddress" onclick="showform()">+ Add New Address
								</button>
							</div>
                    
                </div>
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                    
                    <div style="width: 30%;">
                        <form action="change-password" method="post" id="changepasswordform">
                        <label for="exampleInputEmail1" class="form-label">Old Password</label>
                        <input name="oldpassword" type="password" class="form-control mb-2" id="exampleInputEmail1"
                                        aria-describedby="emailHelp">
                        <label for="exampleInputEmail1" class="form-label">New Password</label>
                        <input name="newpassword"type="text" class="form-control mb-2" id="exampleInputEmail1"
                                            aria-describedby="emailHelp">
                        <label for="exampleInputEmail1" class="form-label">Confirm Password</label>
                        <input name="confirmpassword"type="password" class="form-control mb-2" id="exampleInputEmail1"
                                            aria-describedby="emailHelp">
                        <button type="submit" class="btn btn-primary save">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

	<%@include file="../footers/footer2.jsp" %>


    </div>
   <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/js/bootstrap.min.js"
        integrity="sha512-ZvbjbJnytX9Sa03/AcbP/nh9K95tar4R0IAxTS2gh2ChiInefr1r7EpnVClpTWUEN7VarvEsH3quvkY1h0dAFg=="
        crossorigin="anonymous"></script>
    
    <script src="js/upcoming-service.js"></script>
    <!-- <script type="text/javascript">
        $("#sidenav-li li a").on('click', function (e) {
            $("#sidenav-li .active").removeClass('active');
            $(this).parent().addClass('active');
        });
    </script> -->
    
    <script type="text/javascript">
    	$(document).ready(function(){
    		$("#personaldetailsform").on('submit',function(event){
    			event.preventDefault();
				console.log("personal details...");
				console.log($("#personaldetailsform").serialize());

				$.ajax({
					type : "POST",
					url : "personal-details",
					data : $("#personaldetailsform").serialize(),
					success : function(data, textStatus, jqXHR) {
						console.log("success..")
						console.log(data);
						if (data == "true") {
							document.getElementById('personaldetailsform').reset();
							alert("Your Details Have Been Successfully Submitted.");
						} else {
							console.log("some error");
						}
					},
					error : function(data) {
						console.log(data);
					}
				})
			});
		});
    </script>
    
    <script type="text/javascript">
    	$(document).ready(function(){
    		$("#changepasswordform").on('submit', function(event){
    			event.preventDefault();
    			console.log("change password...");
				console.log($("#changepasswordform").serialize());

				$.ajax({
					type : "POST",
					url : "change-password",
					data : $("#changepasswordform").serialize(),
					success : function(data, textStatus, jqXHR) {
						console.log("success..")
						console.log(data);
						if (data == "true") {
							document.getElementById('changepasswordform').reset();
							alert("Your Password Has changed Successfully.");
						} else {
							console.log("some error......");
						}
					},
					error : function(data) {
						console.log("error..");
						console.log(data);
					}
				})
			});
		});
    </script>
    
    
    <script type="text/javascript">
    	$(document).on('click','#nav-profile-tab',function(){
    		console.log("hii");
    		$.ajax({
	    		type:"GET",
	    		url:"/helperland_springmvc/showaddress",
	    		contentType:"application/json",
	    		success:function(data, textStatus, jqXHR){
	    			var result = '<thead><tr><th scope="col" colspan="2" >Addresses</th><th scope="col" class="centertext">Action</th></tr></thead>'
	    				result += "<tbody>";
	    				$.each(data, function(k, v) {
	    					
	    					//console.log(v.state);
	    					//document.getElementById("showadd").innerHTML = document.getElementById("showadd").innerHTML + v.addressLine1;
	    					result += '<tr>';
	    					result += '<td colspan="2">';
	    					result +='<div class="row"><span><strong>Address:  </strong>'+v.address_line1+', '+v.address_line2+'</span> <span><strong>Phone number:  </strong>'+v.mobile+'</span></div>';
	    					result += "</td>";
	    					result += '<td class=centertext>';
	    					result += '<button OnClick="editAddressFun('+v.address_id+')" data-bs-toggle="modal" data-bs-target="#editAddressModal" style="border: none; background-color:transparent;"><i class="far fa-edit"></i></button><button OnClick="deleteAddressFun('+v.address_id+')" data-bs-toggle="modal" data-bs-target="#deleteAddressModal" style="border: none; background-color:transparent;"><i style="color:black" class="fa fa-trash" aria-hidden="true"></i></button>';
	    					result += "</td>";
	    					result += "</tr>";
	    				});
	    				console.log("SUCCESS: ", data);
	    				result += "</tbody>";
	    				$("#showadd").html(result);
	    				
	    		},
	    		error: function(e){
	    			console.log("ERROR: ", e);
	    		},
	    		done: function(e){
	    			console.log("Done");
	    		}
	    	});
    	})
    	
    	
    	function editAddressFun(id) {
			console.log(id);
			event.preventDefault();
			
			$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "/helperland_springmvc/readaddress/"+id,
				crossDomain : true,
				success : function(data,textStatus,jqXHR) {
					console.log(data);
					$("#address_line1").val(data.address_line1);
					$("#address_line2").val(data.address_line2);
					$("#postal_code").val(data.postal_code);
					$("#mobile").val(data.mobile);
					$("#city").val(data.city);
				},
				error : function(xml, textStatus, xhr) {
					alert("Some error occured");
				}
			});
			
		
			jQuery(document).ready(function($) {
				$("#editaddressform").submit(function(event) {
					event.preventDefault();
					updateaddresssettings(id);
				});
			});
		}
    	
    	function updateaddresssettings(id) {
    		console.log(id);
			$
					.ajax({
						type : "GET",
						url : "/helperland_springmvc/edit-address/"
								+ $("#address_line1").val() + ","
								+ $("#address_line2").val() + ","
								+ $("#postal_code").val() + "," + $("#city").val()
								+ "," + $("#mobile").val() + "," + id,
						success : function(data,textStatus,jqXHR) {
							console.log("SUCCESS: ", data);
							//document.getElementById('successmessage').innerHTML = 'successmessage';
							$('#nav-profile-tab').click();
							$("#editaddressmodalclose").click();
						},
						error : function(e) {
							console.log("ERROR: ", e);
						},
						done : function(e) {
							console.log("Done");
						}
					});
		}
    	
    	function deleteAddressFun(v){
    		console.log(v)
    		event.preventDefault();
    		$.ajax({
				type : "GET",
				contentType : "application/json",
				url : "/helperland_springmvc/readaddress/"+v,
				crossDomain : true,
				success : function(data,textStatus,jqXHR) {
					console.log(data);
					
					$("#addressline1").html(data.address_line1+",");
					$("#addressline2").html(data.address_line2+",");
					$("#postalcode").html(data.postal_code);
					$("#phone").html(data.mobile);
					$("#delcity").html(data.city+",");
				},
				error : function(xml, textStatus, xhr) {
					alert("Some error occured");
				}
			});
    		
    		jQuery(document).ready(function($) {
    			$("#deleteaddressform").submit(function(event) {
    				event.preventDefault();
    				deleteAddressSettings(v);
    				console.log(v);
    			});
    	});
    	}
    	function deleteAddressSettings(v) {
    		$.ajax({
    			type: "GET",
    			url: "/helperland_springmvc/delete-address/"+v,
    			
    			success: function(data,textStatus,jqXHR) {
    				console.log("SUCCESS: Address deleted", data);
    				$("#deleteaddressmodalclose").click();
    				$('#nav-profile-tab').click();	
    			},
    			error: function(e) {
    				console.log("ERROR: ", e);
    			},
    			done: function(e) {
    				console.log("DONE");
    			}
    		});
    	}

    </script>
    
    <script type="text/javascript">
		function showform() {
			var element = document.getElementById("useraddressform");
			element.classList.toggle("showform");
		}
	</script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$("#useraddressform").on('submit', function(event) {
				event.preventDefault();
				console.log("user address form...");
				console.log($(this).serialize());

				$.ajax({
					type : "POST",
					url : "user-address",
					data : $(this).serialize(),
					success : function(data, textStatus, jqXHR) {
						console.log(data);
						if(data == "true"){
							document.getElementById('useraddressform').reset();
							showform();
							$("#nav-profile-tab").click();
						}
					},
					error : function(data) {
						console.log(data);
					}
				})
			})
		})
	</script>
    
    
</body>

</html>