package com.service;

import com.dao.Dao;
import com.dao.impl.UsersDao;
import com.po.Users;
import com.util.MD5Util;
import com.util.RandomUtil;

public class ManageService {
	
	public static String modifyTeacherPwd(String teacherId){
		int tid = Integer.parseInt(teacherId);
		String msgPwd = RandomUtil.genEasyPswd(8);
		String md5Pwd = MD5Util.getMD5(msgPwd);
		Dao userDao = new UsersDao();
		Users us = new Users();
		us.setUid(tid);
		us.setPassWord(md5Pwd);
		if(userDao.update(us)){
			return msgPwd;
		}
		return "fail";
	}

}
