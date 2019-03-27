package com.neuedu.hotel.web;

import java.util.List;

public class PageData<T> {
	//当前页码
	private int curPage;
	//总页数
	private int totalPage;
	//总数据
	private int totalRecord;
	//每页数据数
	private int pageSize;
	
	//返回的数据
	private List<T> data;
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	
	public PageData(int pageSize,int curPage) {
		this.pageSize = pageSize;
		this.curPage = curPage;
	}
	//求总页数
	public int getTotalPage() {
		totalPage = totalRecord % pageSize == 0 ? totalRecord / pageSize : (totalRecord / pageSize) + 1;
		return totalPage;
	}
	public void setTotalPage(int totelPage) {
		this.totalPage = totelPage;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totelRecord) {
		this.totalRecord = totelRecord;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	@Override
	public String toString() {
		return "PageData [curPage=" + curPage + ", totalPage=" + totalPage + ", totalRecord=" + totalRecord
				+ ", pageSize=" + pageSize + ", data=" + data + "]";
	}
	
	
}
