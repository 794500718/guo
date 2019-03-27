package com.neuedu.hotel.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.neuedu.hotel.po.Client;
import com.neuedu.hotel.service.ClientService;
import com.neuedu.hotel.service.ClientServiceImpl;
import com.neuedu.hotel.util.Urllist;
import com.neuedu.hotel.util.V;
import com.neuedu.hotel.web.ApiResult;
import com.neuedu.hotel.web.PageData;
import com.neuedu.hotel.web.Result;

public class ClientController {
	private ClientService clientService;
	private static Logger log = Logger.getLogger(ClientController.class);
	public ClientController() {
		clientService = new ClientServiceImpl();
	}
	
	public Result add(HttpServletRequest req,HttpServletResponse resp) {
		String[] params = {"client_name","pwd","gender","tel","email"};
		String[] getparams = {"client_name","pwd","gender","tel","email"};
		V.isEmpty(params);
		Client client = V.entity(req, Client.class, getparams);
		clientService.save(client);
		//转发的地址
		//提示信息
		//TODO
		req.setAttribute("info", "添加成功");
		Result rs = Result.build().setDispatchUrl(Urllist.clientList);
		return rs;
	}
	
	
	//验证数据是否存在
	public ApiResult validTel(HttpServletRequest req,HttpServletResponse resp) {
		String[] params = {"tel"};
		V.isEmpty(params);
		String tel = req.getParameter("tel");
		boolean hasExist = clientService.validTel(tel);
		//返回客户结果
		ApiResult rs = ApiResult.build();
		Map<String,Boolean> info = new HashMap<String,Boolean>();
		info.put("exist", hasExist);
		rs.setData(info);
		return rs;
	}
	//查看会员列表
	public Result list (HttpServletRequest req,HttpServletResponse resp) {
		String curPageStr = V.getDate(req, "page", "1");
		String pageSizeStr = V.getDate(req, "page_size", "10");
		String keyword = V.getDate(req, "keyword", "");
		int curPage = Integer.parseInt(curPageStr);
		int pageSize = Integer.parseInt(pageSizeStr);
		
		PageData<Client> clients = clientService.list(curPage, pageSize, keyword);
		req.setAttribute("clients", clients);
		req.setAttribute("keyword", keyword);
		log.info("返回数据" + clients);
		Result result = Result.build().setDispatchUrl("/admin/page/mlist.jsp");
		return result;
	}
	
}
	

