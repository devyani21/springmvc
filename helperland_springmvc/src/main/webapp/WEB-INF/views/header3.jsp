<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<header id="header1">
    <nav class="navbar navbar-expand-lg fixed-top navbar-light" id="navbar1">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"><img src="<c:url value='/resources/img/index/white-logo-transparent-background.png' />"
                    class="img-fluid" id="logo-image"></a></a>
            
            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link Rounded-Rectangle-5-copy-4 book-a-cleaner-copy" aria-current="page"
                            href="#">Book Now</a>
                    </li>
                    <li class="nav-item book-a-cleaner">
                        <a class="nav-link" href="prices.html">Prices & Services</a>
                    </li>
                    <li class="nav-item book-a-cleaner">
                        <a class="nav-link" href="#">Warranty</a>
                    </li>
                    <li class="nav-item book-a-cleaner">
                        <a class="nav-link" href="#">Blog</a>
                    </li>
                    <li class="nav-item book-a-cleaner">
                        <a class="nav-link" href="contact.html">Contact</a>
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
                            <a class="dropdown-item dropdown" href="#" disabled>Welcome <div style="text-transform:capitalize;">${userinfo.first_name}</div> </a>
                            <a class="dropdown-item" href="customer-dashboard"> My Dashboard </a>
                            <a class="dropdown-item" href="customer-settings"> My Settings</a>
                            <a class="dropdown-item" href="logout"> Logout </a>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown center">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <img
                            src="img/Service-Provider-Upcoming-services/icon-notification.png"
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
                <li class="nav-item dropdown invisible1">
                    <a class="nav-link dropdown-toggle " href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="img/Service-Provider-Upcoming-services/avatar.png"
                            class="rounded-circle avatar" alt="" loading="lazy" />
                    </a>

                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item dropdown" href="#"> Edit settings </a>
                        <a class="dropdown-item" href="#"> Edit profile page </a>
                        <a class="dropdown-item" href="#"> Show profile page </a>
                        <a class="dropdown-item" href="#"> Create profile page </a>
                    </div>
                </li>
            </ul> -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02"
                aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- <ul class="navbar-nav mb-2 mb-lg-0">
                <li class="nav-item dropdown right-margin left-margin center">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown"
                        aria-expanded="false"><img
                            src="img/Service-Provider-Upcoming-services/icon-notification.png"
                            class="Icon-Notification">
                        <span class="badge rounded-pill badge-notification bg-danger">1</span></a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown01">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item dropdown right-margin left-margin invisible1">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown"
                        aria-expanded="false"><img src="img/Service-Provider-Upcoming-services/avatar.png"
                            class="rounded-circle avatar" alt="" loading="lazy" /></a>
                    <ul class="dropdown-menu" aria-labelledby="dropdown01">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </li>
                    </ul>
                </li>
            </ul> -->
        </div>
    </nav>
</header>