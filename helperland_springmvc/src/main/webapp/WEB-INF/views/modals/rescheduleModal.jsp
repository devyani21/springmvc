<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Reschedule Modal -->
<div class="modal fade" id="rescheduleModal" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="border: none;">
				<h4>Service Details</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close" id="rescheduleservicemodalclose"></button>
			</div>
			<div class="modal-body">
			<div class="mb-2">
				<h4> Select New Service Date & Time </h4>
			</div>
				<form name="rescheduleserviceform" id="rescheduleserviceform" method="post">
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
						<div class="col-lg-6 col">
							<button type="submit" class="btn btn-primary" id="yesbutton">Reschedule</button>
						</div>
						<div class="col-lg-6 col">
							<button class="btn btn-primary" id="nobutton"
								data-bs-dismiss="modal">Cancel</button>
						</div>
					</div>


				</form>
			</div>
		</div>
	</div>
</div>
