package com.neuedu.hotel.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.neuedu.hotel.util.D;
import com.neuedu.hotel.util.NameUtil;
@WebServlet("/app/*")
public class WebApp extends HttpServlet	{
	private static Logger Log = Logger.getLogger(WebApp.class);
	private static final String PROJECT_NAME = "/hotel/app/";
	private static final String CTR_PKG = "com.neuedu.hotel.controller";
	private static ObjectMapper objMapper = new ObjectMapper();
	
	//http://localhost:8080/215/goods/add
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		try {
			String uri = req.getRequestURI();
			uri = uri.replace(PROJECT_NAME, "");
			//
			String[] uris = uri.split("/");
			if(uris.length < 2) {
				throw new RuntimeException("请求地址错误");
			}
			String className = CTR_PKG + "." + NameUtil.toCamel(uris[0],true) + "Controller";
			String methodName = NameUtil.toCamel(uris[1],false);
			
			Class clz = Class.forName(className);
			Object instance = clz.newInstance();
			Method method = clz.getMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			Object returnResult = method.invoke(instance, req,resp);
			Log.info("返回信息：" + returnResult);
			//返回的结果转发到指定界面
			if(returnResult !=null) {
				//跳转逻辑
				if(returnResult instanceof Result) {
					//跳转
					Result rs = (Result)returnResult;
					req.getRequestDispatcher(rs.getDispatchUrl()).forward(req, resp);
				}
				//json处理
				if(returnResult instanceof ApiResult) {
					ApiResult rs = (ApiResult)returnResult;
					String rsStr = objMapper.writeValueAsString(rs);
					resp.getWriter().print(rsStr);
				}
			}
		}catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			D.rollBack();
		}catch(Exception e){
			//跳向500页面
			resp.sendError(500,e.getMessage());
		}finally {
		
			//关闭数据库连接
			D.close();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doGet(req, resp);
	}
}
