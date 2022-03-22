<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Delete Address Modal -->
<div class="modal fade" id="deleteAddressModal" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="border: none;">
				<h4>Delete Address</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close" id="deleteaddressmodalclose"></button>
			</div>
			<div class="modal-body">
			<div class="row mb-2">
				<div><strong>Address: </strong> <span id="addressline1"> </span><span id="addressline2"></span> <span id="delcity"></span> <span id="postalcode"></span></div>
				<div><strong>Phone No:  </strong> <span id="phone"></span></div>
			</div>
				<form name="deleteaddressform" id="deleteaddressform">
					<div class="row mb-2">
						<div class="col">
							<h5 class="text-danger"> Are You Sure You Want To Delete This Address?</h5>
						</div>
					</div>
					<div class="row mb-2">
						<div class="col-lg-6 col">
							<button type="submit" class="btn btn-primary" id="yesbutton">Yes</button>
						</div>
						<div class="col-lg-6 col">
							<button class="btn btn-primary" id="nobutton" data-bs-dismiss="modal">No </button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
    