package com.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.po.Users;
import com.service.PasswordUpdate;
import com.service.UsersLogin;
import com.util.JsonUtil;
import com.util.MD5Util;

@SuppressWarnings("serial")
public class UsersAction extends ActionSupport {
	
	private String uid;
	private String passWord;
	private String newpassword;
	private Users users;
	private String page;
	private HttpSession session;
	public String login(){
		/*System.out.println("login:begin");*/
		String upwd=MD5Util.getMD5(passWord);
		if(UsersLogin.judgeLogin(uid, upwd)){
			try{
				users=UsersLogin.getUsers(uid);
				session=ServletActionContext.getRequest().getSession();
				session.setAttribute("users", users);
			}catch(Exception e){
				e.printStackTrace();
			}
			/*System.out.println(session.getAttribute("users"));
			System.out.println("upwd="+users.getPassWord());*/
			JsonUtil.sendSuccess();
		}else{
			JsonUtil.sendError();
		}
		System.out.println("login:end");
		return NONE;
	}
	public String judgeLogin(){
		/*System.out.println("judgeLogin: begin");*/
		session=ServletActionContext.getRequest().getSession();
		if(session.getAttribute("users")!=null){
			/*System.out.println("page information:"+page);*/
			return "judgeSuccess";
		}
		/*System.out.println("judgeLogin: end");*/
		return "error";
	}
	public String update(){
		session=ServletActionContext.getRequest().getSession();
		Users u=(Users) session.getAttribute("users");
		u.setPassWord(newpassword);
		if(PasswordUpdate.passwordUpdate(u)){
			return "Success";
		}
		return "error";
	}
	public String quit(){
		session=ServletActionContext.getRequest().getSession();
		session.setAttribute("users", null);
		page="index";
		return "judgeSuccess";
	}
	
	
	
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}


	
}
