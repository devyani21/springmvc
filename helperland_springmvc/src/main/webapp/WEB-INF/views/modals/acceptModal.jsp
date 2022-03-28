<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Accept Service Modal -->
<div class="modal fade" id="acceptModal"
	data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
	aria-labelledby="staticBackdropLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="border: none;">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close" id="acceptmodalclose"></button>
			</div>
			<div class="modal-body">
                                <div style="text-align: center;">
                                <i class="fa fa-check-circle" style="font-size:65px;color:rgb(7, 167, 7)"></i>
                            </div>
                            <div style="text-align: center;">
                                <span id="setstatus"><h5></h5></span>
                            </div>
                                <div class="d-flex justify-content-center mb-3" id="okbutton">
                                    <button type="submit" class=" form-control btn btn-success btn-lg" onClick="location.reload();">OK</button>
                                </div>

			</div>
		</div>
	</div>
</div>
