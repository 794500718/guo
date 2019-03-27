package com.neuedu.hotel.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.neuedu.hotel.mapper.ClientMapper;
import com.neuedu.hotel.po.Client;
import com.neuedu.hotel.util.D;
import com.neuedu.hotel.web.PageData;

public class ClientServiceImpl implements ClientService{
	private ClientMapper  clientMapper;
	private SqlSession sqlSession;
	public ClientServiceImpl() {
		sqlSession = D.open();
		
		clientMapper = sqlSession.getMapper(ClientMapper.class);
	}
	//添加顾客
	public void save(Client client) {
		clientMapper.insert(client);
		
	}
	//验证手机号已经存在
	public boolean validTel(String tel) {
		Client client = clientMapper.getClientByTel(tel);
		if(client != null) {
			return true;
		}
		return false;
	}
	
	//按条件查询教师信息
	public PageData<Client> list(int curPage, int pageSize, String keyword) {
		// 1.统计满足查询条件的记录数量
		int totalRecord = clientMapper.clientListCount(keyword);
		// 2.按条件返回相关记录
		int begin = (curPage - 1) * pageSize;
		//构建分页数据对象
		List<Client> data = clientMapper.clientList(begin, pageSize, keyword);
		PageData<Client> pageData = new PageData<Client>(pageSize,curPage);
		pageData.setTotalRecord(totalRecord);
		pageData.setData(data);
		return pageData;
	}
	
	
}
