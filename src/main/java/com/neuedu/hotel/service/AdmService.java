package com.neuedu.hotel.service;


import com.neuedu.hotel.ex.InvalidParamException;
import com.neuedu.hotel.po.Adm;
import com.neuedu.hotel.web.PageData;

public interface AdmService {
	//添加顾客接口
	public void save(Adm adm) ;
	
	//电话号码是否存在
	public boolean validTel(String tel);
	
	public PageData<Adm> list(int curPage,int pageSize,String keyword);
	
	//管理员登录
	public Adm login(Adm adm) throws InvalidParamException;
	
	//根据id查找管理员
	public Adm getAdmById(int id) throws InvalidParamException;
	
	//更新用户信息
	public void update(Adm adm);
}
