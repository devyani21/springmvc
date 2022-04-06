<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--Login  Modal -->
            <div class="modal fade" id="login" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content md">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Login to your account</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form:form modelAttribute="login" action="loginProcess" method="post" name="loginForm" id="loginForm">
                                <span id="message2" class="text-danger"><h6> </h6></span>
                                <div class="input-group mb-3">
                                    <input type="email" class="form-control" placeholder="Email"
                                        aria-label="Recipient's username" aria-describedby="basic-addon2" name="email" required>
                                    <span class="input-group-text" id="email"><i class="fa fa-user"
                                            aria-hidden="true"></i></span>
                                </div>
                                <div class="input-group mb-3">
                                    <input id="passwordshow" type="password" class="form-control" placeholder="Password"
                                        aria-label="Recipient's username" aria-describedby="basic-addon2" name="password" required>
                                    <span class="input-group-text" id="password"><i class="fa fa-lock"
                                            aria-hidden="true"></i></span>
                                </div>
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                                </div>
                                <div class="d-flex justify-content-center mb-3">
                                    <button type="submit" class=" form-control btn btn-success btn-lg">Submit</button>
                                </div>
                                <div id="forgotpassword" class="d-flex justify-content-center">
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#forgot-password">Forgot
                                        Password?</a>
                                </div>
                                <div class="d-flex justify-content-center mb-5">
                                    <span>Don't have an account? </span>
                                    <span id="forgotpassword" class="d-flex justify-content-center">
                                        <a href="customer-register">Create an account</a>
                                    </span>
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