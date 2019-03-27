package com.neuedu.hotel.service;

import com.neuedu.hotel.po.Client;
import com.neuedu.hotel.web.PageData;

public interface ClientService {
	//添加顾客接口
	public void save(Client client) ;
	
	//电话号码是否存在
	public boolean validTel(String tel);
	
	public PageData<Client> list(int curPage,int pageSize,String keyword);
}
