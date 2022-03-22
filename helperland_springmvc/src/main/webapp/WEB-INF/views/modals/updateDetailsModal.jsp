<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

            <div class="modal fade" id="success" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header" style="border: none;">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="success">
                                <div style="text-align: center;">
                                <i class="fa fa-check-circle" style="font-size:65px;color:rgb(7, 167, 7)"></i>
                            </div>
                            <div style="text-align: center;">
                                <h5>Booking has been successfully submited</h5>
                            </div>
                            <div style="text-align: center;"><h6>Service Booking Id is <span id="serviceid"></span></h6></div>
                                <div class="d-flex justify-content-center mb-3" id="okbutton">
                                    <button type="submit" class=" form-control btn btn-success btn-lg">OK</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            