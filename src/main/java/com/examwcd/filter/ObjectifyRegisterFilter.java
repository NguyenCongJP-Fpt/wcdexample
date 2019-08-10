package com.examwcd.filter;

import com.examwcd.entity.Phone;
import com.googlecode.objectify.ObjectifyService;

import javax.servlet.*;
import java.io.IOException;

public class ObjectifyRegisterFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        ObjectifyService.register(Phone.class);
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
