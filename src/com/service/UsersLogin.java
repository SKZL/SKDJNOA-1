package com.service;

import com.dao.Dao;
import com.dao.impl.UsersDao;
import com.po.Users;

public class UsersLogin {
	
	public static boolean judgeLogin(String uid, String upwd){
		System.out.println("进入到service逻辑类judgelogin");
		int id=Integer.parseInt(uid);
		Users user=null;
		System.out.println("uid:"+uid+"upwd:"+upwd);
		Dao usersDao = new UsersDao();
		user=(Users) usersDao.get(id);
		System.out.println("com.service success");
		if(user != null && user.getPassWord().equals(upwd)){
			System.out.println("用户查询成功，返回true");
			return true;
		}
		return false;
	}
	
	public static Users getUsers(String uid){
		int id=Integer.parseInt(uid);
		Users user=null;
		Dao usersDao = new UsersDao();
		user=(Users) usersDao.get(id);
		System.out.println("sssssss"+user.getPassWord());
		return user;
	}
	

}
