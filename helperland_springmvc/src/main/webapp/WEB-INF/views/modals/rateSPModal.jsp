<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Rate Service Provider Modal -->
<div class="modal fade" id="rateSPModal" data-bs-backdrop="static"
	data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="border: none;">
				<div class="d-flex modal-title me-3" id="rateSpModalLabel2">
					<div
						class="sp_icon me-2 rounded-circle d-flex align-items-center justify-content-center">
						<img alt="" height="48" width="48" id="ratingModalIcon">
					</div>
					<div class="d-flex flex-column">
						<p class="mb-0" id="ratingSpName"></p>
						<div id="ratingModelAvgStars">
							<span class="icon" id="icon1">&star;</span> <span class="icon"
								id="icon2">&star;</span> <span class="icon" id="icon3">&star;</span> <span
								class="icon" id="icon4">&star;</span> <span class="icon" id="icon5">&star;</span>
						</div>
					</div>
				</div>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close" id="rescheduleservicemodalclose"></button>
			</div>
			<div class="modal-body">
				<p class="mb-3 pb-1 border-bottom">Rate your service provider</p>
				<div class="d-flex my-3">
					<p class="mb-0 me-3" style="min-width: 150px;">On time arrival</p>
					<form class="rating" id="onTimeForm">
						<label> <input type="radio" name="on_time_arrival"
							value="1" checked form="mainRatingForm" /> <span class="icon">&star;</span>
						</label> <label> <input type="radio" name="on_time_arrival"
							value="2" form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span>
						</label> <label> <input type="radio" name="on_time_arrival"
							value="3" form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span>
						</label> <label> <input type="radio" name="on_time_arrival"
							value="4" form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span> <span
							class="icon">&star;</span>
						</label> <label> <input type="radio" name="on_time_arrival"
							value="5" form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span>
						</label>
					</form>
				</div>
				<div class="d-flex my-3">
					<p class="mb-0 me-3" style="min-width: 150px;">Friendly</p>
					<form class="rating" id="friendlyForm">
						<label> <input type="radio" name="friendly" value="1"
							checked form="mainRatingForm" /> <span class="icon">&star;</span>
						</label> <label> <input type="radio" name="friendly" value="2"
							form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span>
						</label> <label> <input type="radio" name="friendly" value="3"
							form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span>
						</label> <label> <input type="radio" name="friendly" value="4"
							form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span> <span
							class="icon">&star;</span>
						</label> <label> <input type="radio" name="friendly" value="5"
							form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span>
						</label>
					</form>
				</div>
				<div class="d-flex my-3">
					<p class="mb-0 me-3" style="min-width: 150px;">Quality of
						service</p>
					<form class="rating" id="qosForm">
						<label> <input type="radio" checked
							name="quality_of_service" value="1" form="mainRatingForm" /> <span
							class="icon">&star;</span>
						</label> <label> <input type="radio" name="quality_of_service"
							value="2" form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span>
						</label> <label> <input type="radio" name="quality_of_service"
							value="3" form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span>
						</label> <label> <input type="radio" name="quality_of_service"
							value="4" form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span> <span
							class="icon">&star;</span>
						</label> <label> <input type="radio" name="quality_of_service"
							value="5" form="mainRatingForm" /> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span> <span
							class="icon">&star;</span> <span class="icon">&star;</span>
						</label>
					</form>
				</div>
				<form action="rate-sp" method="post" name="mainRatingForm"
					id="mainRatingForm">
					<div class="d-flex flex-column">
						<label for="feedbackComment" class="mb-2">Feedback on
							service provider</label>
						<textarea name="comments" maxlength="500" rows="3"
							form="mainRatingForm" class="p-2"></textarea>
						<input type="hidden" name="rating_to" form="mainRatingForm"
							id="ratingTo" /> <input type="hidden" name="service_req_id"
							form="mainRatingForm" id="ratingServiceReqId" />
					</div>
					<div class="mb-2 mt-2">
					<button id="submitfeedback" class="btn btn-primary">Submit</button>
					<!--  <button id="submitFeedback" type="submit"
						class="submitFeedback rounded-pill text-light text-decoration-none border-0 mt-3">Submit</button>-->
						</div>
				</form>

			</div>
		</div>
	</div>
</div>
