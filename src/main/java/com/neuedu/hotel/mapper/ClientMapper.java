package com.neuedu.hotel.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neuedu.hotel.po.Client;

public interface ClientMapper {
	/*
	 * 插入顾客信息
	 */
	public void insert(Client client); 
	
	//根据电话号码查询信息
	
	public Client getClientByTel(String tel);
	
	//满足查询条件的记录总数
	public int clientListCount(@Param("keyword") String keyword);
	
	//按照条件返回指定数量的数据
	public List<Client> clientList(@Param("begin")int begin,@Param("pageSize")int pageSize,@Param("keyword")String keyword);
}
