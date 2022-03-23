<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Cancel Service Modal -->
<div class="modal fade" id="cancelModal" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="border: none;">
				<h4>Cancel Service Request</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close" id="cancelmodalclose"></button>
			</div>
			<div class="modal-body">
				<div class="row mb-2">
					<h5>Why you want to cancel the service request?</h5>
				</div>
				<form name="cancelservicereqform" id="cancelservicereqform" method="post">
					<div class="row mb-2">
						<div class="mb-3">
							<label for="hasissues" class="form-label">Example
								textarea</label>
							<textarea name="has_issues" class="form-control" id="hasissues"
								rows="3"></textarea>
						</div>
					</div>
					<div class="row mb-2">
						<div class="col">
							<button type="submit" class="btn btn-primary" id="yesbutton">Cancel Now</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>