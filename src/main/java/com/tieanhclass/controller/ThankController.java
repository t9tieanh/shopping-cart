package com.tieanhclass.controller;


import com.tieanhclass.Constants.SessionConstants;
import com.tieanhclass.model.CartModel;
import com.tieanhclass.utils.SessionUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/thank"})
public class ThankController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/thank.jsp");
        CartModel cartModel = (CartModel) SessionUtils.getInstance().getValue(request, SessionConstants.SESSION);
        request.setAttribute("model", cartModel);
        rd.forward(request, response);
    }
}
