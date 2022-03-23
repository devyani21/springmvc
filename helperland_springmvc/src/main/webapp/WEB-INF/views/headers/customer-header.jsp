<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<header>
            <nav id="sidenav-1" class="sidenav float-xs-right invisible1" data-mdb-right="true" role="navigation"
                data-hidden="false" data-accordion="true">

                <ul class="sidenav-menu" id="sidenav-li">
                    <li class="sidenav-item li-class">
                        <a class="sidenav-link" href="customer-dashboard">
                            </i><span>Dashboard</span></a>
                    </li>
                    <li class="sidenav-item li-class">
                        <a class="sidenav-link" href="customer-service-history"><span>Service History</span></a>
                    </li>
                    <li class="sidenav-item li-class">
                        <a class="sidenav-link" href="upcoming-service.html"><span>Service Schedule</span></a>
                    </li>
                    <li class="sidenav-item li-class">
                        <a class="sidenav-link"><span>Favourite Pros</span></a>
                    </li>
                    <li class="sidenav-item li-class">
                        <a class="sidenav-link"><span>Invoices</span></a>
                    </li>
                    <li class="sidenav-item li-class">
                        <a class="sidenav-link"><span>Notifications</span></a>
                    </li>
                </ul>
            </nav>
            <nav class="navbar navbar-expand-lg fixed-top navbar-light" aria-label="Main navigation">
                <div class="container-fluid">
                    <a class="navbar-brand" href="home"><img src="<c:url value='/resources/img/index/white-logo-transparent-background.png' />"
                            class="img-fluid white_logo_transparent_background"></a>

                    <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item left-margin right-margin invisible2">
                                <a class="nav-link" aria-current="page" href="customer-dashboard"><span class="nav-li">Dashboard
                                    </span></a>
                            </li>
                            <li class="nav-item left-margin right-margin invisible2">
                                <a class="nav-link" aria-current="page" href="index.html"><span class="nav-li">Service
                                        History </span></a>
                            </li>
                            <li class="nav-item left-margin right-margin invisible2">
                                <a class="nav-link" aria-current="page" href="index.html"><span class="nav-li">Service
                                        Schedule </span></a>
                            </li>
                            <li class="nav-item left-margin right-margin invisible2">
                                <a class="nav-link" aria-current="page" href="index.html"><span class="nav-li">Favourite
                                        Pros </span></a>
                            </li>
                            <li class="nav-item left-margin right-margin invisible2">
                                <a class="nav-link" aria-current="page" href="index.html"><span class="nav-li">Invoices
                                    </span></a>
                            </li>
                            <li class="nav-item left-margin right-margin invisible2">
                                <a class="nav-link" aria-current="page" href="index.html"><span
                                        class="nav-li">Notifications </span></a>
                            </li>
                            <hr class="invisible2">
                            <li class="nav-item ">
                                <a class="nav-link Rounded-Rectangle-5-copy-4" aria-current="page"
                                    href="book-service"><span class="nav-li">  Book Now </span></a>
                            </li>
                            <li class="nav-item left-margin right-margin">
                                <a class="nav-link" aria-current="page" href="prices"><span class="nav-li">Prices &
                                        Services </span></a>
                            </li>
                            <li class="nav-item left-margin right-margin">
                                <a class="nav-link" href="#"><span class="nav-li">Warranty</span></a>
                            </li>
                            <li class="nav-item left-margin right-margin">
                                <a class="nav-link" href="#"><span class="nav-li">Blog</span></a>
                            </li>
                            <li class="nav-item left-margin right-margin">
                                <a class="nav-link" href="contact"><span class="nav-li">Contact</span></a>
                            </li>
                        </ul>
                    </div>
                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item dropdown right-margin left-margin center">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-bs-toggle="dropdown"
                                aria-expanded="false"><img
                                    src="<c:url value='/resources/img/customer/icon-notification.png' />"
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
                                aria-expanded="false"><img src="<c:url value='/resources/img/customer/avatar.png' />"
                                    class="rounded-circle avatar" alt="" loading="lazy" /></a>
                            <ul class="dropdown-menu" aria-labelledby="dropdown01">
                                <li><a class="dropdown-item" href="#" disabled>Welcome<div style="text-transform:capitalize;">${userinfo.first_name}</div></a></li>
                                <li><a class="dropdown-item" href="customer-dashboard">My Dashboard</a></li>
                                <li>
                                    <a class="dropdown-item" href="customer-settings">My Settings</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="logout">Logout</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <button class="navbar-toggler p-0 border-0" type="button" data-bs-toggle="offcanvas"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            </nav>
        </header>
    