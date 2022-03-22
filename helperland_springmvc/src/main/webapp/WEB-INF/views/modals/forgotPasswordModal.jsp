<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Forgot Password Modal -->
            <div class="modal fade" id="forgot-password" data-bs-backdrop="static" data-bs-keyboard="false"
                tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Forgot Password</h5>
                            <button id="modalclosebutton" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form:form modelAttribute="user"  action="forgotPassword" method="post" id="forgotpasswordform">
                                <span id="message" class="text-danger"><h6> </h6></span>
                                <div class="input-group mb-3">
                                    <input id="email" type="email" class="form-control" placeholder="Email"
                                        aria-label="Recipient's username" aria-describedby="basic-addon2" name="email">
                                    <span class="input-group-text" ><i class="fa fa-user"
                                            aria-hidden="true"></i></span>
                                         
                                </div>
                                 
                                <div class="d-flex justify-content-center mb-3">
                                    <button type="submit" class=" form-control btn btn-success btn-lg">Send</button>
                                </div>
                                <div id="forgotpassword" class="d-flex justify-content-center">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#login">Login Now</a>
                                </div>
                            </form:form>
                        </div>
                        <!-- <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Understood</button>
                        </div> -->
                    </div>
                </div>
            </div>