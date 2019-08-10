package com.examwcd.controller;

import com.examwcd.entity.Phone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class ListPhoneController extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(ListPhoneController.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("listPhone", ofy().load().type(Phone.class).list());
        req.getRequestDispatcher("/admin/listPhone.jsp").forward(req, resp);
        resp.getWriter().println("text something");
    }
}
