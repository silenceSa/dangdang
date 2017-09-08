package com.yidu.dangdang.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodingFilter implements Filter {

	protected FilterConfig filterConfig = null;    
	protected String encoding = "";

	@Override
	public void destroy() {

		filterConfig = null;    
	    encoding = null;
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain chain) throws IOException, ServletException {

		if(encoding != null)    
	          servletRequest.setCharacterEncoding(encoding);    
	          chain.doFilter(servletRequest, servletResponse);    
		      servletResponse.setCharacterEncoding(encoding);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

		this.filterConfig = filterConfig;    
        this.encoding = filterConfig.getInitParameter("encoding");
        
	}
	
	
}
