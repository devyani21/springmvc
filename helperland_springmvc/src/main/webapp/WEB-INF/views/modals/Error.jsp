<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Error Modal -->
            <div class="modal fade" id="error" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header" style="border: none;">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="success">
                                <div style="text-align: center;">
                                <i class="fa fa-warning" style="font-size:65px;color:red"></i>
                            </div>
                            <div style="text-align: center;">
                                <h5>Please try again after some time</h5>
                            </div>
                            <div style="text-align: center;"><h6 class="text-danger">Some error occured!</h6></div>
                                <div class="d-flex justify-content-center mb-3" id="okbutton">
                                    <button type="submit" class=" form-control btn btn-success btn-lg">OK</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>