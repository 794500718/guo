package com.neuedu.hotel.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ThreadLocalRandom;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.log4j.Logger;
import org.apache.tomcat.jni.Local;

public class D {
	//记录日志
	private static Logger Log = Logger.getLogger(D.class);
	//当前线程为ID把sqlsession存进去
	private static ThreadLocal<SqlSession> local = new ThreadLocal<SqlSession>();
	private static SqlSessionFactory SqlSessionFactory;
	
	static {
		
		try {
			String resource = "mybatis-config.xml";//读取存储信息
			InputStream inputStream;
			inputStream = Resources.getResourceAsStream(resource);//
			SqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);//创建session工厂
		} catch (Exception e) {
			e.printStackTrace();
			Log.info("连接数据库失败!");
			throw new RuntimeException("数据库连接失败!");
		}
		
		
	}
	
	public static SqlSession open() {
		SqlSession sqlSession = local.get();
		if(sqlSession == null) {
			sqlSession = SqlSessionFactory.openSession();
			local.set(sqlSession);
			Log.info("创建数据库连接..");
		}
		return sqlSession;
	}
	
	//关闭数据库
	public static void close() {
		SqlSession sqlSession = local.get();
		if(sqlSession != null) {
			sqlSession.commit();
			sqlSession.close();
			local.remove();
			Log.info("关闭数据库...");
		}
		
	}
	
	public static void rollBack() {
		SqlSession sqlSession = local.get();
		if(sqlSession != null) {
			sqlSession.rollback();
			sqlSession.close();
			local.remove();
			Log.info("出现异常..数据回滚");
		}
	}
	
}
