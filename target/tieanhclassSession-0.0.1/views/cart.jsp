<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <link rel="stylesheet" href="<c:url value='/template/css/style.css' />" />
<%--    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<c:url value='/template/css/header.css' />" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
                        <div class="row g-0">
                            <div class="col-lg-8">
                                <div class="p-5">
                                    <h1 class="fw-bold mb-4">Your Cart</h1>
                                    <hr class="my-4">

                                    <div class="productList">

                                        <c:forEach var="item" items="${model.cartDetailModels}">

                                            <!-- Product 1 -->
                                            <div class="row mb-4 d-flex justify-content-between align-items-center">
                                                <input type="hidden" name="id" value="item.product.id">
                                                <div class="col-md-1 col-lg-1">
                                                    <input type="checkbox" class="product-checkbox" data-price="${item.product.price}" checked>
                                                </div>
                                                <div class="col-md-2 col-lg-2 col-xl-2">
                                                    <img src="${item.product.thumbnail}"
                                                         class="img-fluid rounded-3" alt="Cotton T-shirt">
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-3">
                                                    <h6 class="text-muted">${item.product.title}</h6>
                                                    <h6 class="mb-0">${item.product.author}</h6>
                                                    <button style="margin-top: 10px" type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-sm me-1 mb-2 remove-item" data-mdb-tooltip-init
                                                             title="Remove item" data-id="${item.product.id}">
                                                        <i class="fas fa-trash"></i>
                                                    </button>
                                                </div>
                                                <div class="col-md-3 col-lg-3 col-xl-2 d-flex">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2"
                                                            onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
                                                        <i class="fas fa-minus"></i>
                                                    </button>
                                                    <input id="form1" min="0" name="quantity" value="${item.quantity}" type="number"
                                                           class="form-control form-control-sm quantity-input" data-price="${item.product.price}">
                                                    <button data-mdb-button-init data-mdb-ripple-init class="btn btn-link px-2"
                                                            onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
                                                        <i class="fas fa-plus"></i>
                                                    </button>
                                                </div>
                                                <div class="col-md-3 col-lg-2 col-xl-2 offset-lg-1">
                                                    <h6 class="mb-0">${item.product.price} $</h6>
                                                </div>
                                            </div>




                                        </c:forEach>
                                    </div>


                                    <!-- Total Price -->
                                    <div class="d-flex justify-content-between mb-5">
                                        <h5 class="text-uppercase">Total price</h5>
                                        <h5 id="total-price">$ </h5>
                                    </div>

                                    <div class="col-md-3 d-flex justify-content-between">
                                        <a href="shop">
                                            <button type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary ">
                                                ContinueShopping
                                            </button>
                                        </a>

                                        <button type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary" style="margin-left: 10px;">
                                            PlaceOrder
                                        </button>
                                    </div>

                                </div>
                            </div>
                            <div class="col-lg-4 bg-body-tertiary">
                                <div class="p-5">
                                    <h3 class="fw-bold mb-5 mt-2 pt-1">Order Summary</h3>
                                    <hr class="my-4">
                                    <div class="d-flex justify-content-between mb-4">
                                        <h5 id = "items-count" class="text-uppercase">Items (3)</h5>
                                        <h5 id="summary-price">$ 132.00</h5>
                                    </div>
                                    <hr class="my-4">
                                    <div class="d-flex justify-content-between mb-5">
                                        <h5 class="text-uppercase">Total</h5>
                                        <h5 id="summary-total">$ 137.00</h5>
                                    </div>
                                </div>
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
<script>

    var checkboxes = document.querySelectorAll('.product-checkbox');
    checkboxes.forEach((checkbox) => {
        checkbox.addEventListener('change', calculateTotal);
    });


    function calculateTotal() {
        let total = 0;  // Biến để lưu tổng giá
        let countProduct = 0;

        // Duyệt qua tất cả các checkbox
        checkboxes.forEach((checkbox) => {
            if (checkbox.checked) {  // Nếu checkbox được chọn
                total += parseFloat(checkbox.dataset.price);  // Lấy giá từ thuộc tính 'data-price'
                countProduct += 1 ;
            }
        });

        // Hiển thị tổng giá đã tính trong phần tử có id 'total-price'
        document.getElementById('total-price').innerText = '$ ' + total.toFixed(2);
        document.getElementById('summary-price').innerText = '$ ' + total.toFixed(2);
        document.getElementById('summary-total').innerText = '$ ' + total.toFixed(2);
        document.getElementById('items-count').innerText = 'ITEMS ('+ countProduct +')'
    }

    calculateTotal()

    $(".remove-item").click(function() {
        var productId = $(this).data("id");
        console.log(productId)
        $.ajax({
            url: 'cart',
            type: 'delete',
            contentType: 'application/json', // Thiết lập loại nội dung
            data: JSON.stringify({ id: productId }), // Chuyển đổi thành JSON
            success: function(result) {
                console.log('Item deleted');
                window.location.href = window.location.href; // Điều hướng lại đến URL hiện tại
            },
            error: function(xhr, status, error) {
                console.error('Lỗi xóa sản phẩm: ' + error);
            }
        });
    });


</script>

</body>
</html>

