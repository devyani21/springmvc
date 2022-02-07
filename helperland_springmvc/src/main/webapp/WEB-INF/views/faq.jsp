<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/faq.css' />">
</head>

<body>
    <div class="wrapper">
        <%@include file="header2.jsp" %>
        <div id="banner2"></div>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-lg col FAQs">
                        FAQs
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg col">
                        <img src="img/forma-1-copy-5.png" alt="" class="Forma-1-copy-5">
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg col Whether-you-are-Customer-or-Service-provider-We-have-tried-our">
                        Whether you are Customer or Service provider,
                        We have tried our best to solve all your queries and questions.
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <nav>
                        <div class="nav nav-tabs nav-justified mb-3 nav-pills nav-fill" id="nav-tab" role="tablist">
                            <a class="nav-link active For-Customer" id="nav-home-tab" data-bs-toggle="tab"
                                href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">FOR
                                CUSTOMER</a>
                            <a class="nav-link For-Customer" id="nav-profile-tab" data-bs-toggle="tab"
                                href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">FOR
                                SERVICE PROVIDER</a>
                        </div>
                    </nav>
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                            aria-labelledby="nav-home-tab">
                            <div class="accordion accordion-flush" id="accordionFlushExample">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseOne"
                                            aria-expanded="false" aria-controls="flush-collapseOne">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingTwo">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo"
                                            aria-expanded="false" aria-controls="flush-collapseTwo">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTwo" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThree">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseThree"
                                            aria-expanded="false" aria-controls="flush-collapseThree">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseThree" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingFour">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseFour"
                                            aria-expanded="false" aria-controls="flush-collapseFour">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFour" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingFive">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseFive"
                                            aria-expanded="false" aria-controls="flush-collapseFive">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFive" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingSix">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseSix"
                                            aria-expanded="false" aria-controls="flush-collapseSix">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseSix" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingSeven">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven"
                                            aria-expanded="false" aria-controls="flush-collapseSeven">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseSeven" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingSeven" data-bs-parent="#accordionFlushExample">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingEight">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseEight"
                                            aria-expanded="false" aria-controls="flush-collapseEight">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseEight" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingEight" data-bs-parent="#accordionFlushExample">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingNine">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseNine"
                                            aria-expanded="false" aria-controls="flush-collapseNine">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseNine" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingNine" data-bs-parent="#accordionFlushExample">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                            <div class="accordion accordion-flush" id="accordionFlushExample2">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingTen">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseTen"
                                            aria-expanded="false" aria-controls="flush-collapseTen">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseTen" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingTen" data-bs-parent="#accordionFlushExample2">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingEleven">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseEleven"
                                            aria-expanded="false" aria-controls="flush-collapseEleven">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseEleven" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingEleven" data-bs-parent="#accordionFlushExample2">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingThirteen">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseThirteen"
                                            aria-expanded="false" aria-controls="flush-collapseThirteen">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseThirteen" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingThirteen" data-bs-parent="#accordionFlushExample2">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingFourteen">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseFourteen"
                                            aria-expanded="false" aria-controls="flush-collapseFourteen">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFourteen" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingFourteen" data-bs-parent="#accordionFlushExample2">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingFifteen">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseFifteen"
                                            aria-expanded="false" aria-controls="flush-collapseFifteen">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseFifteen" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingFifteen" data-bs-parent="#accordionFlushExample2">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingSixteen">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseSixteen"
                                            aria-expanded="false" aria-controls="flush-collapseSixteen">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseSixteen" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingSixteen" data-bs-parent="#accordionFlushExample2">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingSeventeen">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseSeventeen"
                                            aria-expanded="false" aria-controls="flush-collapseSeventeen">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseSeventeen" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingSeventeen" data-bs-parent="#accordionFlushExample2">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingEighteen">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseEighteen"
                                            aria-expanded="false" aria-controls="flush-collapseEighteen">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseEighteen" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingEighteen" data-bs-parent="#accordionFlushExample2">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingNineteen">
                                        <button class="accordion-button collapsed" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#flush-collapseNineteen"
                                            aria-expanded="false" aria-controls="flush-collapseNineteen">
                                            <div class="Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Vestib">
                                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nisl
                                                nunc, iaculis mattis tellus ac ut non imperdiet velit?</div>
                                        </button>
                                    </h2>
                                    <div id="flush-collapseNineteen" class="accordion-collapse collapse"
                                        aria-labelledby="flush-headingNineteen" data-bs-parent="#accordionFlushExample2">
                                        <div
                                            class="accordion-body Lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-Sed-id">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id diam
                                            tincidunt, fringilla ante vitae, dapibus velit. Vivamus id tortor rhoncus,
                                            efficitur quam at, suscipit tortor. Integer fermentum convallis eros vel
                                            semper. Ut non imperdiet velit. Praesent eu dui vel lacus porta eleifend
                                            eget quis dui. Integer tempus massa in gravida tincidunt. Fusce in libero
                                            tristique, euismod nisi vel, luctus urna. Interdum et malesuada fames ac
                                            ante ipsum primis in faucibus. Donec et placerat arcu. Suspendisse lacinia
                                            tristique massa. Etiam risus justo, scelerisque id arcu eu, sodales tempor
                                            eros. Aliquam efficitur pretium urna, sit amet congue risus malesuada
                                            rutrum. Donec id massa vel velit ullamcorper accumsan ut eget nisl. Fusce
                                            viverra commodo lacus, sit amet facilisis leo luctus dictum. </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </section>
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-lg col test7">
                        <div class="GET-OUR-NEWSLETTER">
                            GET OUR NEWSLETTER
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class=" col-lg-6 col test8">
                        <div class="Ellipse-649" onclick="topFunction()" style="cursor: pointer;">
                            <img src="<c:url value='/resources/img/index/forma-1(1).png' />"
                                class="Forma-1-new">
                        </div>
                        <div class="Rounded-Rectangle-649">
                            <div class="Your-Email">
                                Your Email
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col test8">
                        <div class="Rounded-Rectangle-649-copy">
                            <div class="Submit">
                                Submit
                            </div>
                        </div>
                        <img src="<c:url value='/resources/img/index/layer-598.png' />"
                            class="Layer-598">
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer2.jsp" %>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="<c:url value='/resources/js/common.js' />" type="text/javascript"></script>
</body>

</html>