<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Reschedule Service Modal -->
<div class="modal fade" id="rescheduleServiceModal"
	data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="border: none;">
				<h4>Service Details</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close" id="rescheduleservicemodalclose"></button>
			</div>
			<div class="modal-body">
					<div>
						<div>
							<strong><span id="rservicestartdate"></span><span
								id="rservicestarttime"></span> <span id="rserviceendtime"></span></strong>
							<br> <strong>Duration: <span id="rtotalservicetime"></span></strong>
						</div>
						<div class="border-top"></div>
					</div>
					<div>
						<div>
							<h6 style="display:inline;">Service Id: </h6><span id="rserviceid"></span><br>
							<h6 style="display:inline;"> Extras: </h6><span id="rextras"></span><br>
							<h6 style="display:inline;">Net Amount: </h6><span id="rtotalcost"></span>
						</div>
						<div class="border-top"></div>
					</div>
					<div>
						<div>
							<h6 style="display:inline;">Service Address: </h6><span id="rserviceaddress"></span><br>
							<h6 style="display:inline;">Phone: </h6><span id="rphone"></span><br>
							<h6 style="display:inline;">Email: </h6><span id="remail"></span>
							
						</div>
						<div class="border-top"></div>
					</div>
					<div class="mb-2">
						<div>
							<h6 style="display:inline;">Comments: </h6><span id="rcomments"></span>
							<div id="rnopets">
							
							</div>
							<div id="ryespets">
							
							</div>
							<div class="border-top"></div>
						</div>
					</div>
					<div class="row mb-2" id="customebuttons">
						<div class="col-lg-6 col">
							<button data-bs-toggle="modal" data-bs-target="#rescheduleModal" class="btn btn-primary" id="yesbutton">Reschedule</button>
						</div>
						<div class="col-lg-6 col">
							<button class="btn btn-primary" id="nobutton"
								data-bs-dismiss="modal">Cancel</button>
						</div>
					</div>
			</div>
		</div>
	</div>
</div>
