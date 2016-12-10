package com.dao.impl;

import java.util.List;

import org.hibernate.Session;

import com.dao.Dao;
import com.db.HibernateSessionFactory;
import com.po.Users;

public class UsersDao implements Dao {

	@Override
	public boolean add(Object obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean del(Object obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Object get(int id) {
		System.out.println("进入到数据库查询类UserDso");
		Users users=null;
		Session session = HibernateSessionFactory.getSession();
		System.out.println("获取session后，将要开启事务！！！！");
		session.beginTransaction();
		System.out.println("com.dao：数据库查询开始");
		users=(Users)session.createQuery("from Users where uid=?").setInteger(0, id).uniqueResult();
		System.out.println("com.dao：数据库查询结束");
		HibernateSessionFactory.closeSession();
		return users;
	}

	@Override
	public boolean update(Object obj) {
		Users users=(Users)obj;
		int uid=users.getUid();
		Session session = HibernateSessionFactory.getSession();
		session.beginTransaction();
		try{
			session.createQuery("update Users set passWord='"+users.getPassWord()+"' where uid="+uid).executeUpdate();
			session.getTransaction().commit();
			return true;
		}catch(Exception e){
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		
		HibernateSessionFactory.closeSession();
		return false;
	}

	@Override
	public List query(String hql) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getPage(int page, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getBySQL(String SQL) {
		// TODO Auto-generated method stub
		return null;
	}
	


}
