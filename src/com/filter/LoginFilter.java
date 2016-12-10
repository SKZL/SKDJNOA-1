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
public class LoginFilter extends HttpServlet implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request =(HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		HttpSession session = request.getSession();   
		String uri = request.getServletPath();
		String contextPath=request.getContextPath();//根
		//System.out.println("uri地址："+uri);
		//System.out.println("contextPath地址："+contextPath);
		 if(uri.equals("")) uri+="/";  
		if (uri.endsWith(".jsp") && !uri.endsWith("home.jsp")
				&& !uri.endsWith("login.jsp")
				&& !(uri.indexOf("browserwarn.jsp")>-1)&&!(uri.indexOf("error.jsp")>-1)){//若访问后台资源 过滤到login  
	          Users user=(Users) session.getAttribute("users");  
	          if(user==null){//转入管理员登陆页面  
	      //  	  System.out.println("过滤到进入home页面！！！");
	               response.sendRedirect(contextPath+"/admin/login.jsp"); 
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
