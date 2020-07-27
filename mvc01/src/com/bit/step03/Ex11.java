package com.bit.step03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.jws.soap.InitParam;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
<servlet>
  	<servlet-name>ex11</servlet-name>
  	<servlet-class>com.bit.step03.Ex11</servlet-class>
  	<init-param>
  		<param-name>msg</param-name>
  		<param-value>abcd</param-value>
  	</init-param>
</servlet>
<servlet-mapping>
  	<servlet-name>ex11</servlet-name>
	<url-pattern>/ex11</url-pattern>  
</servlet-mapping>
<servlet-mapping>
  	<servlet-name>ex11</servlet-name>
	<url-pattern>/ex11.bit</url-pattern>  
</servlet-mapping>
*/
//@WebServlet( value={"/ex11","/ex11.bit"}, initParams={
//		@WebInitParam(name="msg1",value="abcd1")
//		,@WebInitParam(name="msg2",value="abcd2")
//		,@WebInitParam(name="msg3",value="abcd3")
//		})
//@WebServlet(urlPatterns = {"/ex11","/ex11.bit"})
//@WebServlet(value={"/ex11","/ex11.bit"})
@WebServlet("/ex11")
public class Ex11 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Enumeration<String> enu = getInitParameterNames();
		while(enu.hasMoreElements()){
			String value=getInitParameter(enu.nextElement());
			System.out.println(value);
		}
		PrintWriter out = resp.getWriter();
		out.println("<h1>annotation mapping</h1>");
	}
}









