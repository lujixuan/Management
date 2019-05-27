package com.ljx.dto;

public class UserDto {
	
	
	private String userName;
	
	private String userId;
	
	private String userPwd;

	private String rememberMe;

	private String userOldPwd;

	private String userPwdConfirm;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getRememberMe() {
		return rememberMe;
	}

	public void setRememberMe(String rememberMe) {
		this.rememberMe = rememberMe;
	}

	public String getUserOldPwd() {
		return userOldPwd;
	}

	public void setUserOldPwd(String userOldPwd) {
		this.userOldPwd = userOldPwd;
	}

	public String getUserPwdConfirm() {
		return userPwdConfirm;
	}

	public void setUserPwdConfirm(String userPwdConfirm) {
		this.userPwdConfirm = userPwdConfirm;
	}
}
