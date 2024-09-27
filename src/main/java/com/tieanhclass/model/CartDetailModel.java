package com.tieanhclass.model;

public class CartDetailModel {
    public ProductModel getProduct() {
        return product;
    }

    public CartDetailModel(ProductModel product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public void setProduct(ProductModel product) {
        this.product = product;
    }

    private ProductModel product;
    private int quantity;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
