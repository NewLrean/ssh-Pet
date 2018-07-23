package com.ssh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ssh.entity.Person;

public class LoginInterceptor implements HandlerInterceptor{

	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("this is afterCompletion of LoginInterceptor");
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		System.out.println("this is postHandle of LoginInterceptor");
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("this is preHandle of LoginInterceptor");
		  HttpSession session=request.getSession();
		  Person person=(Person)session.getAttribute("username");
		  System.out.println("persion=" + person);
		  String URL = request.getRequestURI().toString();
		  System.out.println("URL == " + URL);
		  if(person==null){   
			  System.out.println("no user in LoginInterceptor!!!");
			  request.getRequestDispatcher("/gologin.jsp").forward(request, response);
			  System.out.println("ִ����1...............");
			  return false;
		  }
		  System.out.println("ִ����2...............");
		return true;
	}

}
