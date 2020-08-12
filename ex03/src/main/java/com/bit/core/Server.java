package com.bit.core;

import java.io.File;
import java.util.logging.Logger;

import javax.servlet.ServletException;

import org.apache.catalina.LifecycleException;
import org.apache.catalina.connector.Connector;
import org.apache.catalina.startup.Tomcat;

public class Server {
	static Logger log=Logger.getGlobal();

	public static void main(String[] args) throws ServletException, LifecycleException {
		String basedir = "src/main/resources/html/";
        Tomcat tomcat = new Tomcat();
        tomcat.setPort(8080);
        Connector connector = tomcat.getConnector();
        connector.setURIEncoding("UTF-8");
        tomcat.addWebapp("/", new File(basedir).getAbsolutePath());
        log.info("basedir: " + new File("./" + basedir).getAbsolutePath());
        tomcat.start();
        tomcat.getServer().await(); 
	}

}
