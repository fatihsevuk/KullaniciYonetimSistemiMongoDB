	package com.fatih.listener;
	
	import javax.servlet.ServletContext;
	import javax.servlet.ServletContextEvent;
	import javax.servlet.ServletContextListener;
	import javax.servlet.annotation.WebListener;
	
	import com.mongodb.MongoClient;
	
	@WebListener
	public class MongoDBListener implements ServletContextListener{
	
		@Override
		public void contextDestroyed(ServletContextEvent sce) {
			MongoClient mongoClient=(MongoClient) sce.getServletContext().getAttribute("MONGO_CLIENT");
			mongoClient.close();
		}
	
		@Override
		public void contextInitialized(ServletContextEvent sce) {
			
			ServletContext context=sce.getServletContext();
			//MongoClient mongoClient=new MongoClient(context.getInitParameter("MONGO_HOST"),Integer.parseInt(context.getInitParameter("MONGO_PORT")));
			
			MongoClient mongoClient=new MongoClient();
			
			
			sce.getServletContext().setAttribute("MONGO_CLIENT", mongoClient);
			
			
			
		}
	
	}
