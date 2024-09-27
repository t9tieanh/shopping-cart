<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping with phamtienanh</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <link rel="stylesheet" href="<c:url value='/template/css/style.css' />" />
    <%--    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<c:url value='/template/css/header.css' />" />

    <style>
        @media (min-width: 1025px) {
            .h-custom {
                height: 100vh !important;
            }
        }

        .container-shoping {
            background-image: url("<c:url value='/template/media/richard-stachmann-xSI9HVPmYeE-unsplash.jpg' />");
            background-size: 100%, 100%;
            margin-top: 60px;
        }

        .header-shopping {
            background-image: url("<c:url value='/template/media/clem-onojeghuo-pTeZKi29EYE-unsplash.jpg' />" );
            background-size: 100%, 100%;
            color: rgba(214, 208, 208, 0.83);
        }
    </style>
</head>

<body>

<%@ include file="/common/header.jsp" %>

<div class="container-shoping">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12">
                <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                    <div class="card-body p-0">
                        <header class="bg-light header-shopping" style="padding: 100px">
                            <div class="container text-center">
                                <h1 class="display-4">CD List</h1>
                                <p class="lead">Shopping with pphamtienanh</p>
                            </div>
                        </header>
                        <div class="row g-0">
                            <div class="">
                                <div class="p-5">
                                    <h1 class="fw-bold mb-4">YourCart</h1>
                                    <hr class="my-4">

                                    <div class="productList">


                                        <form action="cart" method="post">

                                            <input type="hidden" value="1"  name="id"/>
                                            <input type="hidden" value="Best Of Charlie"  name="title"/>
                                            <input type="hidden" value="Charlie"  name="author"/>
                                            <input type="hidden" value="5,99"  name="price"/>
                                            <input type="hidden" value="https://m.media-amazon.com/images/I/81NmdZFyncL._UF350,350_QL50_.jpg"  name="thumbnail"/>
                                            <input type="hidden" value="1"  name="quantity"/>



                                            <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                <div class="col-md-2 col-lg-2 col-xl-2">
                                                    <img src="https://m.media-amazon.com/images/I/81NmdZFyncL._UF350,350_QL50_.jpg" class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-3">
                                                    <h6 class="text-muted fw-bold">Best Of Charlie</h6>
                                                    <h6 class="mb-0">Charlie</h6>
                                                    <h6 class="mb-0">5,99 $</h6>
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                        <i class="fas fa-minus"></i>
                                                    </button>
                                                    <input id="form1" min="0" name="quantity" value="1" type="number" class="form-control form-control-sm quantity-input" data-price="44.00">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                        <i class="fas fa-plus"></i>
                                                    </button>
                                                </div>
                                                <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1 text-end"> <!-- Thêm text-end -->
                                                    <button type="submit" class="btn btn-dark add-to-cart" >Add to Cart</button>
                                                </div>
                                            </div>

                                        </form>

                                        <!-- Product 2 -->
                                        <form action="cart" method="post">

                                            <input type="hidden" value="2"  name="id"/>
                                            <input type="hidden" value="1989 (Taylor's Version)"  name="title"/>
                                            <input type="hidden" value="Taylor Swift"  name="author"/>
                                            <input type="hidden" value="5,99"  name="price"/>
                                            <input type="hidden" value="https://ew.com/thmb/0crmSKC2zoFLzADUdoyzjdJ-dFU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/taylor-swift-rollout-12042394-b0bf30fa7221450f91e9456415c3ba46.jpg"  name="thumbnail"/>
                                            <input type="hidden" value="1"  name="quantity"/>

                                            <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                <div class="col-md-2 col-lg-2 col-xl-2">
                                                    <img src="https://ew.com/thmb/0crmSKC2zoFLzADUdoyzjdJ-dFU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/taylor-swift-rollout-12042394-b0bf30fa7221450f91e9456415c3ba46.jpg" class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-3">
                                                    <h6 class="text-muted fw-bold">1989 (Taylor's Version)</h6>
                                                    <h6 class="mb-0">Taylor Swift</h6>
                                                    <h6 class="mb-0">5,99 $</h6>
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                        <i class="fas fa-minus"></i>
                                                    </button>
                                                    <input id="form1" min="0" name="quantity" value="1" type="number" class="form-control form-control-sm quantity-input" data-price="44.00">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                        <i class="fas fa-plus"></i>
                                                    </button>
                                                </div>
                                                <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1 text-end"> <!-- Thêm text-end -->
                                                    <button type="submit" class="btn btn-dark add-to-cart" >Add to Cart</button>
                                                </div>
                                            </div>

                                        </form>

                                        <!-- Product 3 -->
                                        <form action="cart" method="post" accept-charset="UTF-8">

                                            <input type="hidden" value="3"  name="id"/>
                                            <input type="hidden" value="Ai cũng bắt đầu từ đâu đó"  name="title"/>
                                            <input type="hidden" value="HieuThuHai"  name="author"/>
                                            <input type="hidden" value="5,99"  name="price"/>
                                            <input type="hidden" value="https://i.scdn.co/image/ab67616d0000b273c006b0181a3846c1c63e178f"  name="thumbnail"/>
                                            <input type="hidden" value="1"  name="quantity"/>

                                            <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                <div class="col-md-2 col-lg-2 col-xl-2">
                                                    <img src="https://i.scdn.co/image/ab67616d0000b273c006b0181a3846c1c63e178f" class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-3">
                                                    <h6 class="text-muted fw-bold">Ai cũng phải bắt đầu từ đâu đó</h6>
                                                    <h6 class="mb-0">HieuThuHai</h6>
                                                    <h6 class="mb-0">5,99 $</h6>
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                        <i class="fas fa-minus"></i>
                                                    </button>
                                                    <input id="form1" min="0" name="quantity" value="1" type="number" class="form-control form-control-sm quantity-input" data-price="44.00">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                        <i class="fas fa-plus"></i>
                                                    </button>
                                                </div>
                                                <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1 text-end"> <!-- Thêm text-end -->
                                                    <button type="submit" class="btn btn-dark add-to-cart" >Add to Cart</button>
                                                </div>
                                            </div>

                                        </form>


                                        <!-- Product 3 -->
                                        <form action="cart" method="post">

                                            <input type="hidden" value="4"  name="id"/>
                                            <input type="hidden" value="MEDICINE (2024)"  name="title"/>
                                            <input type="hidden" value="Coldzy"  name="author"/>
                                            <input type="hidden" value="5,99"  name="price"/>
                                            <input type="hidden" value="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/1/1/b/4/11b401e973d960939b9845c34b66dd42.jpg"  name="thumbnail"/>
                                            <input type="hidden" value="1"  name="quantity"/>

                                            <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                <div class="col-md-2 col-lg-2 col-xl-2">
                                                    <img src="https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_jpeg/cover/1/1/b/4/11b401e973d960939b9845c34b66dd42.jpg" class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-3">
                                                    <h6 class="text-muted fw-bold">MEDICINE (2024)</h6>
                                                    <h6 class="mb-0">Coldzy</h6>
                                                    <h6 class="mb-0">5,99 $</h6>
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                        <i class="fas fa-minus"></i>
                                                    </button>
                                                    <input id="form1" min="0" name="quantity" value="1" type="number" class="form-control form-control-sm quantity-input" data-price="44.00">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2" onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                        <i class="fas fa-plus"></i>
                                                    </button>
                                                </div>
                                                <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1 text-end"> <!-- Thêm text-end -->
                                                    <button type="submit" class="btn btn-dark add-to-cart" >Add to Cart</button>
                                                </div>
                                            </div>

                                        </form>



                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-4 bg-body-tertiary">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</div>

<%@ include file="/common/footer.jsp" %>




<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

