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
  <title>Admin | User management</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
  <!-- MDB -->
  <link rel="stylesheet" href="<c:url value='/resources/css/mdb.min.css' />" />
  <!-- Custom styles -->
  <link rel="stylesheet" href="<c:url value='/resources/css/admin-user-management.css' />" />
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/select/1.3.3/css/select.bootstrap5.min.css" />

</head>

<body>
  <!--Main Navigation-->
  <header>
    <!-- Sidebar -->
    <nav id="sidebarMenu" class="collapse d-lg-block sidebar collapse bg-white">
      <div class="position-sticky">
        <div class="list-group list-group-flush mx-3 mt-4">
          <a href="service-requests" class="list-group-item list-group-item-action py-2 ripple" aria-current="true">
            <span>Service Management</span>
          </a>
          <a href="admin-user-management" class="list-group-item list-group-item-action py-2 ripple active"><span>User Management</span></a>
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
          <li class="nav-item dropdown mt-1 mr-4">
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

  <!--Main layout-->
  <main style="margin-top: 58px">
    <div class="container" style="margin-left: 25px; margin-right: 25px;">
      <div class="row">
        <div class="col-lg-6 col">
          <span class="User-Management">
            User Management
          </span>
        </div>
        <div class="col-lg-6 col">
          <div>
          <button type="button" class="btn btn-primary add-new-user">add new user</button>
          </div>
        </div>
      </div>
      <form action="admin-user-management" method="post">
      <div class="row" style="margin-top: 20px; margin-bottom: 30px">
        <select name="username" class="form-select user-name-select ml-2" aria-label="Default select example">
          <option selected Disabled>User Name</option>
          <c:forEach var="u" items="${users }">
              <option value="${u.user_id }">${u.first_name } ${u.last_name }</option>
          </c:forEach>
        </select>
        <select name="userrole" class="form-select user-name-select ml-3" aria-label="Default select example">
          <option selected disabled>User Role</option>
          <option value="1">Customer</option>
          <option value="2">Service Provider</option>
          <option value="0">Admin</option>
        </select>
        <div class="input-group flex-nowrap" style="width:21%;">
          <span class="input-group-text" id="addon-wrapping">+49</span>
          <input name="mobile" type="text" class="form-control" placeholder="Phone" aria-label="Username" aria-describedby="addon-wrapping">
        </div> 
        <div class="input-group flex-nowrap" style="width:21%;">
          <input name="postalcode" type="text" class="form-control" placeholder="Zip Code" aria-label="Username" aria-describedby="addon-wrapping">
        </div> 
        <div>
          <button type="submit" class="btn btn-primary search-button">search</button>
         </div> 
        <div>
          <button type="reset" class="btn btn-primary clear-button">Clear</button>
         </div> 
      </div>
      
      </form>
      <table id="example" class="table" style="width:100%">
        <thead>
          <tr>
            <th>User Name</th>
            <th>User Type</th>
            <th>Date of Registration</th>
            <th>Postal Code</th>
            <th>User Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
        <c:forEach var="user" items="${users }">
          <tr>
            <td style="text-transform:capitalize;">${user.first_name } ${user.last_name }</td>
            <td><c:if test="${user.user_type_id == 1 }">
	                        		Customer
	                        	</c:if>
	                        	<c:if test="${user.user_type_id == 2 }">
	                        		Service Provider
	                        	</c:if>
	        </td>
            <td><span><fmt:formatDate type = "date" value = "${user.created_date}" pattern="dd/MM/yyyy"/></span></td>
            <td>${user.postal_code }</td>
            <td>
            	<c:if test="${user.is_active == 1 }">
            		<button type="button" class="btn btn-success">active</button>
            	</c:if>
            	<c:if test="${user.is_active == 0 }">
            		<button type="button" class="btn btn-danger">Deactivated</button>
            	</c:if>
            	</td>
            <td>
              <a class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center" href="#"
              id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
              <i class="bi bi-three-dots-vertical"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
              <li>
              <button class="dropdown-item" type="button" id="${user.user_id }" onclick="editUserFunction($(this).attr('id'))">
	                                  		<c:if test="${user.is_active == 0 }">
	                                  			Activate
	                                  		</c:if>
	                                  		<c:if test="${user.is_active == 1 }">
	                                  			Deactivate
	                                  		</c:if>
	          </button>
	          <button class="dropdown-item" <c:if test="${user.is_approved == 1 || user.user_type_id == 1 }">disabled</c:if> type="button" id="${user.user_id }" onClick="approveUserFunction($(this).attr('id'))">Approve User</button>
              </li>
            </ul>
            </td>
          </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </main>
  <!--Main layout-->
  <!-- MDB -->
  <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script> -->
    <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js" crossorigin="anonymous"></script>
  
  <script type="text/javascript" src="<c:url value='/resources/js/mdb.min.js' />"></script>
  
  <script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/js/bootstrap.min.js"
		integrity="sha512-ZvbjbJnytX9Sa03/AcbP/nh9K95tar4R0IAxTS2gh2ChiInefr1r7EpnVClpTWUEN7VarvEsH3quvkY1h0dAFg=="
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
  <!-- Custom scripts -->
  <!-- <script type="text/javascript" src="js/admin.js"></script>-->
  <script type="text/javascript">

    $(document).ready(function () {
      $('#example').DataTable({
        "dom": '<"top"i>rt<"bottom"flp><"clear">'
      });
    });
  </Script>
  
  <script>
    
    	function editUserFunction(id){
    		
    		console.log("id");
    		
    		$.ajax({
				url : "update-user",
				type : "POST",
				data : id,
				contentType : "application/json",
				success : function(data) {
					
					location.reload();
					console.log("ok");
					
				},
				error : function(data) {
					console.log("not");
				}
			})
    	}
    	
    </script>
    
    <script>
    
    	function approveUserFunction(id){
    		
    		console.log("id");
    		
    		$.ajax({
				url : "approve-user",
				type : "POST",
				data : id,
				contentType : "application/json",
				success : function(data) {
					location.reload();
					console.log("ok");
					
				},
				error : function(data) {
					console.log("not");
				}
			})
    	}
    	
    </script>

</body>

</html>