package com.yidu.dangdang.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yidu.dangdang.admin.domain.Admin;

public class AdminFilter implements Filter {

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		/*
         * 1. 得到session
         * 2. 判断session域中是否存在admin，如果存在，放行
         * 3. 判断session域中是否存在admin，如果存在，放行，否则打回到login.jsp，并告诉它不要瞎留达
         */
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        Admin admin = (Admin) req.getSession().getAttribute("admin");
        if(admin != null) {
            chain.doFilter(request, response);
        } else {
            res.sendRedirect("../login.jsp");
        }
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

	
	
	

}
