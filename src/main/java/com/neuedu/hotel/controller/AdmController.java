package com.neuedu.hotel.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.neuedu.hotel.ex.InvalidParamException;
import com.neuedu.hotel.po.Adm;
import com.neuedu.hotel.service.AdmService;
import com.neuedu.hotel.service.AdmServiceImpl;
import com.neuedu.hotel.util.Urllist;
import com.neuedu.hotel.util.V;
import com.neuedu.hotel.web.ApiResult;
import com.neuedu.hotel.web.PageData;
import com.neuedu.hotel.web.Result;

public class AdmController {
	private AdmService admService;
	private static Logger log = Logger.getLogger(AdmController.class);
	public AdmController() {
		admService = new AdmServiceImpl();
	}
	
	public Result add(HttpServletRequest req,HttpServletResponse resp) {
		String[] params = {"adm_name","pwd","gender","tel","email"};
		String[] getparams = {"adm_name","pwd","gender","tel","email"};
		V.isEmpty(params);
		Adm Adm = V.entity(req, Adm.class, getparams);
		admService.save(Adm);
		//转发的地址
		//提示信息
		//TODO
		req.setAttribute("info", "添加成功");
		Result rs = Result.build().setDispatchUrl(Urllist.admList);
		
		return rs;
		
	}
	
	
	//验证数据是否存在
	public ApiResult validTel(HttpServletRequest req,HttpServletResponse resp) {
		String[] params = {"tel"};
		V.isEmpty(params);
		String tel = req.getParameter("tel");
		boolean hasExist = admService.validTel(tel);
		//返回管理员结果
		ApiResult rs = ApiResult.build();
		Map<String,Boolean> info = new HashMap<String,Boolean>();
		info.put("exist", hasExist);
		rs.setData(info);
		return rs;
	}
	//查看管理员列表
	public Result list (HttpServletRequest req,HttpServletResponse resp) {
		String curPageStr = V.getDate(req, "page", "1");
		String pageSizeStr = V.getDate(req, "page_size", "10");
		String keyword = V.getDate(req, "keyword", "");
		int curPage = Integer.parseInt(curPageStr);
		int pageSize = Integer.parseInt(pageSizeStr);
		
		PageData<Adm> adms = admService.list(curPage, pageSize, keyword);
		req.setAttribute("Adms", adms);
		req.setAttribute("keyword", keyword);
		log.info("返回数据" + adms);
		Result result = Result.build().setDispatchUrl("/admin/page/adm-list.jsp");
		return result;
	}
	
	/**
	 * 用户登录
	 * @param req
	 * @param resp
	 * @return
	 * @throws InvalidParamException 
	 */
	public Result login(HttpServletRequest req,HttpServletResponse resp) throws InvalidParamException {
		String[] params = {"tel","pwd"};
		V.isEmpty(params);
		Adm adm = V.entity(req, Adm.class, params);
		Adm exAdm = admService.login(adm);
		HttpSession session = req.getSession();
		session.setAttribute("adm", exAdm);
		Result jResult = new Result();
		jResult.setDispatchUrl("/admin/page/blank.jsp");
		return jResult;
	}
	
	//展示修改页面
	public Result edit(HttpServletRequest req,HttpServletResponse resp) throws InvalidParamException {
		String[] params = {"id"};
		V.isEmpty(params);
		int id = Integer.parseInt(req.getParameter("id"));
		Adm adm = admService.getAdmById(id);
		req.setAttribute("adm",adm);
		return Result.build().setDispatchUrl("/admin/page/adm-edit.jsp");
	}
	
	public ApiResult update(HttpServletRequest req,HttpServletResponse resp) {
		String[] params = {"id","adm_name","gender","email"};
		String[] getparams = {"id","adm_name","gender","email"};
		V.isEmpty(params);
		Adm adm = V.entity(req, Adm.class, getparams);
		//调用service修改方法
		
		admService.update(adm);
		return ApiResult.build();
	}
}
