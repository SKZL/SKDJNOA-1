package com.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionSupport;
import com.po.Professional;
import com.po.Users;
import com.service.GetCourse;
import com.util.JsonUtil;

@SuppressWarnings("serial")
public class CourseAction extends ActionSupport {
	
	private String professional;
	private String category;
	private String status;
	private List<Professional> professionalList;
	private List courseName;
	private HttpSession session;
	private Users users;
	public String byProfessional(){
		System.out.println("CourseAction.byProfessional:begin");
		System.out.println("professional:"+professional);
		status="在校";
		if(professional!=null && category!=null){
			courseName=GetCourse.byProfessional(professional ,category,status);
			System.out.println("返回课程名的个数"+courseName);
			JsonUtil.sendList(courseName);
		}else{
			JsonUtil.sendError();
		}
		return NONE;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getProfessional() {
		return professional;
	}
	public void setProfessional(String professional) {
		this.professional = professional;
	}
	public List<Professional> getProfessionalList() {
		return professionalList;
	}
	public void setProfessionalList(List<Professional> professionalList) {
		this.professionalList = professionalList;
	}
	
	public List getCourseName() {
		return courseName;
	}
	public void setCourseName(List courseName) {
		this.courseName = courseName;
	}
	public HttpSession getSession() {
		return session;
	}
	public void setSession(HttpSession session) {
		this.session = session;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
}
