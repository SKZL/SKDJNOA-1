package com.service;

import com.dao.impl.UsersDao;
import com.po.Users;
import com.util.MD5Util;

public class PasswordUpdate {
	public static boolean passwordUpdate(Users u) {

		String newUpwd = MD5Util.getMD5(u.getPassWord());
		u.setPassWord(newUpwd);
		UsersDao uDao = new UsersDao();
		if (uDao.update(u)) {
			return true;
		}
		return false;
	}
	
	
}
