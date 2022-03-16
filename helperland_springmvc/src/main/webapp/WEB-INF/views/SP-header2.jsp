<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<header>

            <nav class="navbar navbar-expand-lg navbar-light fixed-top">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"><img src="<c:url value='/resources/img/index/white-logo-transparent-background.png' />"
                            class="img-fluid white_logo_transparent_background"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="prices">Prices & Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Warranty</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Blog</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contact">Contact</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    <img
                                        src="<c:url value='/resources/img/customer/icon-notification.png' />"
                                        class="Icon-Notification">
                                        <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                            1
                                            <span class="visually-hidden">unread messages</span>
                                          </span>
                                </a>
            
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item dropdown" href="#"> Edit settings </a>
                                    <a class="dropdown-item" href="#"> Edit profile page </a>
                                    <a class="dropdown-item" href="#"> Show profile page </a>
                                    <a class="dropdown-item" href="#"> Create profile page </a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    <img src="<c:url value='/resources/img/customer/avatar.png' />"
                                        class="rounded-circle avatar" alt="" loading="lazy" />
                                </a>
            
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item dropdown" href="#" disabled> Welcome <Div style="text-transform:capitalize;">${userinfo.first_name}</Div> </a>
                                    <a class="dropdown-item" href="customer-dashboard">My Dasboard </a>
                                    <a class="dropdown-item" href="customer-settings"> My Settings</a>
                                    <a class="dropdown-item" href="logout"> Logout </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>