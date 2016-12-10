package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.DefaultListCellRenderer.UIResource;

import com.po.Users;

@SuppressWarnings("serial")
public class BrowserFilter extends HttpServlet implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		String uri = request.getServletPath();
		String contextPath = request.getContextPath();
		if (uri.equals(""))
			uri += "/";
		if (uri.endsWith(".jsp") && !(uri.indexOf("browserwarn.jsp") > -1)
				&& !(uri.indexOf("home.jsp") > -1)
				&& !(uri.indexOf("error.jsp") > -1)) {// 过滤jsp页面
			String browser = request.getHeader("User-Agent");
			System.out.println(browser);
			if (browser.indexOf("MSIE") > -1) {
				response.sendRedirect(contextPath + "/browserwarn.jsp");
				return;
			}

		}
		chain.doFilter(req, resp);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
