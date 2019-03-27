package com.neuedu.hotel.service;

	
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.neuedu.hotel.ex.InvalidParamException;
import com.neuedu.hotel.mapper.AdmMapper;
import com.neuedu.hotel.po.Adm;
import com.neuedu.hotel.util.D;
import com.neuedu.hotel.util.GlobalInfo;
import com.neuedu.hotel.web.PageData;

public class AdmServiceImpl implements AdmService{
	private AdmMapper  admMapper;
	private SqlSession sqlSession;
	public AdmServiceImpl() {
		sqlSession = D.open();
		
		admMapper = sqlSession.getMapper(AdmMapper.class);
	}
	//添加顾客
	public void save(Adm Adm) {
		admMapper.insert(Adm);
		
	}
	//验证手机号已经存在
	public boolean validTel(String tel) {
		Adm Adm = admMapper.getAdmByTel(tel);
		if(Adm != null) {
			return true;
		}
		return false;
	}
	
	//按条件查询教师信息
	public PageData<Adm> list(int curPage, int pageSize, String keyword) {
		// 1.统计满足查询条件的记录数量
		int totalRecord = admMapper.admListCount(keyword);
		// 2.按条件返回相关记录
		int begin = (curPage - 1) * pageSize;
		//构建分页数据对象
		List<Adm> data = admMapper.admList(begin, pageSize, keyword);
		PageData<Adm> pageData = new PageData<Adm>(pageSize,curPage);
		pageData.setTotalRecord(totalRecord);
		pageData.setData(data);
		return pageData;
	}
	
	//用户登录
	public Adm login(Adm adm) throws InvalidParamException {
		Adm existAdm = admMapper.getAdmByTel(adm.getTel());
		if(existAdm == null) {
			throw new InvalidParamException(GlobalInfo.NO_USER_ERROR_CODE,GlobalInfo.USER_INFO_ERROR_MSG);
			
		}
		if(!existAdm.getPwd().equals(adm.getPwd())) {
			throw new InvalidParamException(GlobalInfo.NO_USER_ERROR_CODE,GlobalInfo.USER_INFO_ERROR_MSG);
		}
		return existAdm;
	}
	public Adm getAdmById(int id) throws InvalidParamException {
		
		return admMapper.getAdmById(id);
	}
	
	//通过ID更新用户信息
	public void update(Adm adm) {
		admMapper.updateById(adm);
		
	}
	
	
}
