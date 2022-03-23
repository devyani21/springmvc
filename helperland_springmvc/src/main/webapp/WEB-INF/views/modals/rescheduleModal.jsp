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
							<input name="service_start_date" type="date" class="datepicker"
								id="nservicestartdate" required style="width: 180px;" />
						</div>
						<div class="col-md-6 col">
							<select name="service_start_time"
								class="form-select user-name-select time"
								aria-label="Default select example" id="nservicestarttime">
								<option value="12:00 PM" selected>12:00 PM</option>
								<option value="11:00 AM">11:00 AM</option>
								<option value="1:00 PM">1:00 PM</option>
								<option value="2:00 PM">2:00 PM</option>
								<option value="3:00 PM">3:00 PM</option>
							</select>
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
