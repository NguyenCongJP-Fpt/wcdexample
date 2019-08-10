package com.examwcd.controller;

import com.examwcd.entity.Phone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

import static com.googlecode.objectify.ObjectifyService.ofy;

public class CreatePhoneController extends HttpServlet {

    private static final Logger LOGGER = Logger.getLogger(CreatePhoneController.class.getSimpleName());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/addPhone.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String brand = req.getParameter("brand");
        String price = req.getParameter("price");
        String description = req.getParameter("description");

        Phone phone = Phone.Builder.aPhone()
                .withId(id)
                .withName(name)
                .withBrand(brand)
                .withPrice(price)
                .withDescription(description)
                .build();
        ofy().save().entity(phone).now();
        resp.sendRedirect("/phone/list");
    }
}
