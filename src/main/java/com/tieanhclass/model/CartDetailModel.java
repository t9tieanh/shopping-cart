package com.tieanhclass.model;

import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Locale;

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
    public double totalPrice () throws ParseException {
        double ret = 0.0;
        try {
            NumberFormat format = NumberFormat.getInstance(Locale.GERMANY);
            Number number = format.parse(product.getPrice());
            double doubleValue = number.doubleValue();
            ret = doubleValue * quantity;
        }
        catch (Exception e) {
            System.out.println("kk");
        }
        return ret;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
