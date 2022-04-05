<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Complete Modal -->
            <div class="modal fade" id="completeModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header" style="border: none;">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                                <div style="text-align: center;">
                                <i class="fa fa-check-circle" style="font-size:65px;color:rgb(7, 167, 7)"></i>
                            </div>
                            <div style="text-align: center;"><h5>Mark this service request with service Id <strong><span id="completemsg"></span></strong> as Complete</h5></div>
                            <form name="completeservicereqform" id="completeservicereqform" method="post">
                                <div class="d-flex justify-content-center mb-3">
                                    <button class=" form-control btn btn-success btn-lg">OK</button>
                                </div>
                           </form>
                        </div>
                    </div>
                </div>
            </div>