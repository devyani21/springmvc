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
<title>Block Customer</title>

<c:set var="usertypeid" value="${userinfo.user_type_id }" />
<c:set var="sr" value="${servicerequests }" />
<c:set var="u" value="${users }" />
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
                    <div class="blockCustList">
                        <c:forEach var="u" items="${users }">
                        	<div id="block-customer-div"class="col-sm-4 d-flex align-items-center justify-content-center flex-column" style="width:30.33%;">
	                            <div class="mb-3 d-flex align-items-center justify-content-center" style="width:100px; height:100px;border:2px solid #c0bbbb;border-radius:50% !important">
	                                <img src="<c:url value='/resources/img/customer/cap.png' />"
												class="cap" style="width:60px; height:40px;">
	                            </div>
	                            <p class="mb-3" style="text-transform:capitalize;">${u.first_name } ${u.last_name }</p>
                            	<c:if test = "${fn:contains(blockedId, u.user_id)}">
	                            	<c:forEach var="blocked" items="${blocked }">
	                            		<c:if test="${blocked.target_user_id == u.user_id }">
	                            			<c:if test="${blocked.is_blocked == 1 }">
		                            			<div class="btn btn-success" data-favblockId = "${blocked.target_user_id }" onclick="unblockFunction($(this).attr('data-favblockId'))">Unblock</div>		
		                            		</c:if>
		                            		<c:if test="${blocked.is_blocked == 0 }">
		                            			<div class="btn btn-danger" data-favblockId = "${blocked.target_user_id }" onclick="blockFunction($(this).attr('data-favblockId'))">Block</div>		
		                            		</c:if>	
	                            		</c:if>
	                            	</c:forEach>	
                           		</c:if>
                            	<c:if test = "${!fn:contains(blockedId, u.user_id)}">
                           			<div class="btn btn-danger" data-favblockId = "${u.user_id }" onclick="blockFunction($(this).attr('data-favblockId'))">Block</div>
                           		</c:if>
	                        </div>
                        </c:forEach>
                    </div>		

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
    
	    function blockFunction(id){
	    	
			$.ajax({
				url : 'block-customer',
				type : 'POST',
				data : id,
				contentType : "application/json",
				success : function(data) {
					console.log("block successfully..");
					location.reload();
				},
				error : function(xhr, textStatus, xml) {
					alert("Some error occured");
				}
			})
		}
    
    	function unblockFunction(target_id){
    
    		$.ajax({
   				url : 'unblock-customer',
   				type : 'POST',
   				data : target_id,
   				contentType : "application/json",
   				success : function(data) {
   					location.reload(); 
   				},
   				error : function(xhr, textStatus, xml) {
   					alert("Some error occured");
   				}
   			})
    	}
    </script>
	



</body>

</html>