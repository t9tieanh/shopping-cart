<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <link rel="stylesheet" href="<c:url value='/template/css/style.css' />" />
    <%--    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<c:url value='/template/css/header.css' />" />


    <style>
        /*@media (min-width: 1025px) {*/
        /*    .h-custom {*/
        /*        height: 100vh !important;*/
        /*    }*/
        /*}*/

        body {
            /*background-image: url(image/richard-stachmann-xSI9HVPmYeE-unsplash.jpg);*/
            /*background-size: 100%, 100%;*/
        }
        .container-shoping {
            background-image: url("<c:url value='/template/media/richard-stachmann-xSI9HVPmYeE-unsplash.jpg' />");
            background-size: 100%, 100%;
            margin-top: 60px;
        }
    </style>
</head>

<body>

<%@ include file="/common/header.jsp" %>

<div class="container-shoping">

    <section class="h-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-10 col-xl-8">
                    <div class="card" style="border-radius: 10px;">
                        <div class="card-header px-4 py-5">
                            <h5 class="text-muted mb-0">Thanks for your Order, <span style="color: #458ade;"></span>!</h5>
                        </div>
                        <div class="card-body p-4">
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <p class="lead fw-normal mb-0" style="color: #458ade;">Receipt</p>
                            </div>

                            <c:forEach var="item" items="${model.cartDetailModels}">

                                <div class="card shadow-0 border mb-4">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-2">
                                                <img src="${item.product.thumbnail}" class="img-fluid" alt="CD">
                                            </div>
                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                <p class="text-muted mb-0">${item.product.title}</p>
                                            </div>
                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                <p class="text-muted mb-0 small">${item.product.author}</p>
                                            </div>
                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                <p class="text-muted mb-0 small">${item.product.price} / CD</p>
                                            </div>
                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                <p class="text-muted mb-0 small">Qty: ${item.quantity}</p>
                                            </div>
                                            <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                <p class="text-muted mb-0 small">
                                                        ${item.totalPrice ()}
                                                </p>
                                            </div>
                                        </div>
                                        <hr class="mb-4" style="background-color: #e0e0e0; opacity: 1;">
                                    </div>
                                </div>

                            </c:forEach>


                            <div class="d-flex justify-content-between pt-2">
                                <p class="fw-bold mb-0">Order Details</p>
                                <p class="text-muted mb-0"><span class="fw-bold me-4">Total</span> $ ${model.totalPrice()}</p>
                            </div>
                        </div>
                        <div class="card-footer border-0 px-4 py-5" style="background-color: #2677d4; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                            <h5 class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">Total
                                paid: <span class="h2 mb-0 ms-2">$  ${model.totalPrice()}</span></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



</div>


<%@ include file="/common/footer.jsp" %>

</body>

</html>