package com.neuedu.hotel.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neuedu.hotel.po.Adm;

public interface AdmMapper {
	public void insert(Adm adm); 
	
	//根据电话号码查询信息
	
	public Adm getAdmByTel(String tel);
	
	//满足查询条件的记录总数
	public int admListCount(@Param("keyword") String keyword);
	
	//按照条件返回指定数量的数据
	public List<Adm> admList(@Param("begin")int begin,@Param("pageSize")int pageSize,@Param("keyword")String keyword);
	
	//根据id查找教师
	public Adm getAdmById(int id);
	
	//更新管理员信息
	public void updateById(Adm adm);
}
