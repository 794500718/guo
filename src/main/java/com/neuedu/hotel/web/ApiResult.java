package com.neuedu.hotel.web;

import com.neuedu.hotel.util.GlobalInfo;

public class ApiResult implements BaseResult{ 
	private int code;
	private String msg;
	private Object data;
	public int getCode() {
		return code;
	}
	public ApiResult setCode(int code) {
		this.code = code;
		return this;
	}
	public String getMsg() {
		return msg;
	}
	public ApiResult setMsg(String msg) {
		this.msg = msg;
		return this;
	}
	public Object getData() {
		return data;
	}
	public ApiResult setData(Object data) {
		this.data = data;
		return this;
	}
	@Override
	public String toString() {
		return "ApiResult [code=" + code + ", msg=" + msg + ", data=" + data + "]";
	}
	public static ApiResult build() {
		ApiResult rs = new ApiResult();
		rs.setCode(GlobalInfo.SUCCESS_CODE).setMsg(GlobalInfo.SUCCESS_MSG);
		return rs;
	}
}
