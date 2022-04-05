<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- EditReschedule Modal -->
<div class="modal fade" id="editReschedule" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="border: none;">
				<h5>Edit Service Request</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close" id="rescheduleservicemodalclose"></button>
			</div>
			<div class="modal-body">
				<div class="mb-2">
					<h6>Select New Service Date & Time</h6>
				</div>
				<form name="edit-service" id="editServiceForm" method="post">
					<div class="row mb-2">

						<div class="col-md-6 col">
							<label class="form-label">Date</label> 
							<input name="servicedate" type="date"
								class="datepicker form-control" id="servicestartdate" />
						</div>
						<div class="col-md-6 col">
							<label class="form-label">Time</label> 
							<select name="service_start_time"
								class="form-select"
								aria-label="Default select example" id="servicestarttime">
								<option value="08:00:00" selected>08:00</option>
								<option value="08:30:00">08:30</option>
								<option value="09:00:00">09:00</option>
								<option value="09:30:00">09:30</option>
								<option value="10:00:00">10:00</option>
							</select> <input type="hidden" id="service_start_date"
								name="service_start_date"> <input type="hidden"
								id="rescheduleServiceReqId" name="service_req_id">
						</div>
						<div class="p-1 w-100">
							<small class="text-danger" id="conflictError"></small>
						</div>

					</div>
					<div class="row mb-2">
						<h6>Service Address</h6>
						<div class="col-md-6 col">
							<label for="editAddress1" class="form-label">Street</label> <input
								name="address_line1" type="text" id="editAddress1"
								class="form-control">
						</div>
						<div class="col-md-6 col">
							<label for="editAddress1" class="form-label">House No</label> <input
								name="address_line2" type="text" id="editAddress2"
								class="form-control">
						</div>
						<div class="col-md-6 col">
							<label for="editAddress1" class="form-label">Postal Code</label>
							<input name="postal_code" type="text" id="editPC"
								class="form-control">
						</div>
						<div class="col-md-6 col">
						<label for="editAddress1" class="form-label">City</label>
							<input name="city" type="text" id="editCity"
								class="form-control">
						</div>
						<div class="d-flex flex-column mb-3">
							<label for="reasonScheduleEdit" class="fw-bold from-label">Why do
								you want to reschedule service request?</label>
							<textarea name="reasonReschedule" id="" rows="3" maxlength="500"
								placeholder="Why do you want to reschedule service request?"
								class="p-2 form-control"></textarea>
						</div>
						<div class="d-flex flex-column mb-3">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
