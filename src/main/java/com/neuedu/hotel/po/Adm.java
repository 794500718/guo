package com.neuedu.hotel.po;

import java.util.Date;

public class Adm {
	private Long id;
	private String admName;
	private int gender;
	private String email;
	private String tel;
	private String pwd;
	private Date createTime;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	

	public String getAdmName() {
		return admName;
	}

	public void setAdmName(String admName) {
		this.admName = admName;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}


	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "Client [id=" + id + ", admName=" + admName + ", gender=" + gender + ", email=" + email + ", tel="
				+ tel + ", pwd=" + pwd + ", createTime=" + createTime + "]";
	}
}
