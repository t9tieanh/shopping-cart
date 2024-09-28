package com.tieanhclass.model;

import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Locale;

public class CartDetailModel {
    public CartDetailModel() {
    }

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
    public double totalPrice () throws ParseException {
        return Double.parseDouble(product.getPrice()) * quantity;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
