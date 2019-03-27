package com.neuedu.hotel.ex;

public class InvalidParamException extends BaseException{
	private int code;
	
	public InvalidParamException() {
		
	}
	public InvalidParamException(String msg){
		super(msg);
	}
	public InvalidParamException(int code,String msg) {
		super(code,msg);
	}
}
