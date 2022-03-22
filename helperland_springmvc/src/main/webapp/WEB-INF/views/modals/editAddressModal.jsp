<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Edit Address Modal -->
<div class="modal fade" id="editAddressModal" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="border: none;">
				<h4>Edit Address</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close" id="editaddressmodalclose"></button>
			</div>
			<div class="modal-body">
				<form action="edit-address" name="editaddressform" id="editaddressform">
					<div class=" row mb-2">
						<div class="col-lg-6 col">
							<label for="addressline1" class="form-label">Street Name
							</label> <input name="address_line1" type="text" class="form-control"
								id="address_line1" aria-describedby="emailHelp">
						</div>
						<div class="col-lg-6 col">
							<label for="addressline2" class="form-label">House No</label> <input
								name="address_line2" type="text" class="form-control"
								id="address_line2" aria-describedby="emailHelp">
						</div>
					</div>
					<div class="row mb-2">
						<div class="col-lg-6 col">
							<label for="postal_code" class="form-label">Postal Code</label> <input
								name="postal_code" type="text" class="form-control"
								id="postal_code" aria-describedby="emailHelp">
						</div>
						<div class="col-lg-6 col">
							<label for="city" class="form-label">City</label> <input
								name="city" type="text" class="form-control" id="city"
								aria-describedby="emailHelp">
						</div>
					</div>
					<div class="mb-2 row">
						<div class="col-lg-6 col">
							<label for="phone" class="form-label">Phone No</label> <input
								name="mobile" type="text" class="form-control" id="mobile"
								aria-describedby="emailHelp">
							</div>
						</div>
					</div>
					<div class="mb-2" style="margin-left: 12px;">
					<button type="submit" class="btn btn-primary">Edit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
