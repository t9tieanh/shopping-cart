package com.tieanhclass.controller;

import com.tieanhclass.Constants.SessionConstants;
import com.tieanhclass.model.CartDetailModel;
import com.tieanhclass.model.CartModel;
import com.tieanhclass.model.ProductModel;
import com.tieanhclass.utils.HttpUtils;
import com.tieanhclass.utils.SessionUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/cart"})
public class CartController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        CartModel cartModel = new CartModel();

         if (SessionUtils.getInstance().getValue(request, SessionConstants.SESSION) != null) {
            cartModel = (CartModel) SessionUtils.getInstance().getValue(request, SessionConstants.SESSION);
         }


        RequestDispatcher rd = request.getRequestDispatcher("/views/cart.jsp");
        request.setAttribute("model", cartModel);
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        CartModel cartModel = (CartModel) SessionUtils.getInstance().getValue(request, SessionConstants.SESSION);
        if (cartModel == null) {
            cartModel = new CartModel();
            SessionUtils.getInstance().putValue(request, SessionConstants.SESSION, cartModel);
        }

        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String price = request.getParameter("price");
        String thumbnail = request.getParameter("thumbnail");
        String quantity = request.getParameter("quantity");

        ProductModel productModel = new ProductModel(id,title,author,price,thumbnail);

        cartModel.addItem(productModel);

        RequestDispatcher rd = request.getRequestDispatcher("/views/cart.jsp");
        request.setAttribute("model", cartModel);
        rd.forward(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        CartModel cartModel = (CartModel) SessionUtils.getInstance().getValue(request, SessionConstants.SESSION);
        if (cartModel == null) {
            resp.setStatus(HttpServletResponse.SC_OK);
        }

        HttpUtils httpUtils = HttpUtils.of(request.getReader());


        String productId = httpUtils.toModel(ProductModel.class).getId(); // Lấy id từ đối tượng


        cartModel.removeItem(productId);
        resp.setStatus(HttpServletResponse.SC_OK);
    }
}
