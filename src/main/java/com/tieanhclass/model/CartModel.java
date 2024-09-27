package com.tieanhclass.model;

import java.util.ArrayList;
import java.util.List;

public class CartModel {
    private List<CartDetailModel> cartDetailModels;

    public CartModel() {
        cartDetailModels = new ArrayList<CartDetailModel>();
    }



    public List<CartDetailModel> getCartDetailModels() {
        return cartDetailModels;
    }

    public void setCartDetailModels(List<CartDetailModel> cartDetailModels) {
        this.cartDetailModels = cartDetailModels;
    }

    public CustomerModel getCustomerModelModel() {
        return customerModelModel;
    }

    public void setCustomerModelModel(CustomerModel customerModelModel) {
        this.customerModelModel = customerModelModel;
    }

    private CustomerModel customerModelModel;


    public void addItem(ProductModel productModel) {

        for (CartDetailModel cartDetailModel : cartDetailModels) {
            if (cartDetailModel.getProduct().getId().equals(productModel.getId())) {
                cartDetailModel.setQuantity(cartDetailModel.getQuantity() + 1);
                return;
            }
        }
        cartDetailModels.add(
                new CartDetailModel(productModel,1)
        );
    }
    public void addItem(ProductModel productModel, int quantity) {
        for (CartDetailModel cartDetailModel : cartDetailModels) {
            if (cartDetailModel.getProduct().getId().equals(productModel.getId())) {
                cartDetailModel.setQuantity(cartDetailModel.getQuantity() + quantity);
                return;
            }
        }
        cartDetailModels.add(
                new CartDetailModel(productModel,quantity)
        );
    }

    public void removeItem(String idDelete) {
        for (int i = cartDetailModels.size() - 1; i >= 0; i--) {
            if (cartDetailModels.get(i).getProduct().getId().equals(idDelete)) {
                cartDetailModels.remove(i); // Xóa phần tử dựa trên chỉ số
                return;
            }
        }
    }

}
