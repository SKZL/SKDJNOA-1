package com.action;

import com.service.ManageService;

public class ManageAction {
	private String teacherId;
	private String newPwd;
	private String page;
	
	public String forgetPwd(){
		if(teacherId != null){
			newPwd=ManageService.modifyTeacherPwd(teacherId);
			page="";
		}
		return "ManageSuccess";
	}
	
	
	
	public String getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}
	public String getNewPwd() {
		return newPwd;
	}
	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}
	
	

}
