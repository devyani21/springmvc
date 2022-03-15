<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sevice History</title>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/css/bootstrap.min.css"
        integrity="sha512-thoh2veB35ojlAhyYZC0eaztTAUhxLvSZlWrNtlV01njqs/UdY3421Jg7lX0Gq9SRdGVQeL8xeBp9x1IPyL1wQ=="
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
    <link rel="stylesheet" href="https://mdbootstrap.com/previews/mdb-ui-kit/sidenav/css/mdb.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/select/1.3.3/css/select.bootstrap5.min.css" />

    <link rel="stylesheet" href="<c:url value='/resources/css/customer-dashboard.css' />" />
</head>

<body>
    <div class="wrapper">
        <%@ include file="customer-header.jsp" %>
        <section class="welcome">
            <div class="container">
                <div class="row">
                    <div class="Welcome-Sandip">
                        <span style="text-transform:capitalize;">Welcome, ${userinfo.first_name}!</span>
                    </div>
                </div>
            </div>
    </div>
    </section>

    <section>
        <div class="container table-container w-75">
            <table id="example" class="table" style="width:100%">
                <thead>
                    <tr>
                        <th>Service Details</th>
                        <th>Service Provider</th>
                        <th>Payment</th>
                        <th>Status</th>
                        <th>Rate SP</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>

                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63 
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                    <tr>
                        <td>
                            <div><img src="<c:url value='/resources/img/customer/calender-icon.png' />" alt=""
                                    class="calender-icon"><span>07/01/22</span></div>
                            <div><img src="<c:url value='/resources/img/customer/clock-icon.png' />" alt=""
                                    class="calender-icon"><span>12:00 - 02:00</span></div>
                        </td>
                        <td>
                            <div style="display: inline-block; margin-top: 17px">
                                <img src="<c:url value='/resources/img/customer/cap.png' />" class="cap">
                            </div>
                            <div style="display:block; margin-left:35px; margin-top:-40px">Lyum Watson
                                <div>
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                    <img src="<c:url value='/resources/img/customer/star.png' />" alt="" class="star">
                                </div>
                            </div>
                        </td>
                        <td>
                            <span class="payment">
                                <span class="text-style-1">€ </span> 63
                              </span>
                        </td>
                        <td><button type="button" class="btn btn-success">Success</button></td>
                        <td><button type="button" class="btn btn-danger rate">Rate SP</button></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
    <%@ include file="footer2.jsp" %>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/select/1.3.3/js/dataTables.select.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.0-beta1/js/bootstrap.min.js"
        integrity="sha512-ZvbjbJnytX9Sa03/AcbP/nh9K95tar4R0IAxTS2gh2ChiInefr1r7EpnVClpTWUEN7VarvEsH3quvkY1h0dAFg=="
        crossorigin="anonymous"></script>
    <script src="<c:url value='/resources/js/upcoming-service.js' />"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            $('#example').DataTable({
                "dom": '<"top"i>rt<"bottom"flp><"clear">'
            });
        });
    </Script>
    <script type="text/javascript">
        $("#sidenav-li li a").on('click', function (e) {
            $("#sidenav-li .active").removeClass('active');
            $(this).parent().addClass('active');
        });
    </script>

</body>

</html>