package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.json.JSONException;
import org.json.JSONObject;

import com.dao.Dao;
import com.db.HibernateSessionFactory;
import com.po.Course;
import com.vo.AttendanceVO;

public class PrintDao implements Dao{
	
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean update(Object obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List query(String hql) {
		return null;
	}

	@Override
	public List getPage(int page, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getBySQL(String SQL) {
		JSONObject jsonObj = null;
		String bjm="";
		String kcm="";
		try {
			jsonObj = new JSONObject(SQL);
			bjm=jsonObj.getString("bjm");
			kcm=jsonObj.getString("kcm");
			System.out.println(jsonObj.toString());
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("进入到数据库查询类PrintDao");
		List<Object[]> list=null;
		String HQL="SELECT t2.category,t1.cid ,t1.cname as sd,t2.cname as df,t2.credits ,t4.englishname ,t4.sid ,t4.sname,t2.year,t1.englishname as en,t2.cid as wd "
				+ "FROM t_classname AS t1,t_course AS t2 ,t_coursestudent AS t3 ,t_student AS t4 "
				+ "where t3.cid = t2.cid AND t3.sid=t4.sid and t4.classnameid=t1.cid and t1.cname='"+bjm+"' AND t2.cname='"+kcm+"'";
		Session session = HibernateSessionFactory.getSession();
		System.out.println("获取session后，将要开启事务！！！！");
		session.beginTransaction();
		System.out.println("com.dao：数据库查询开始");
		list=session.createSQLQuery(HQL).list();
		System.out.println("com.dao：数据库查询结束");
		HibernateSessionFactory.closeSession();
		return list;
	}
	public static void main(String[] args) {
		String msg="{'bjm':'计算机科学与技术2014-1','kcm':'英语国家概况-澳大利亚'}";
		JSONObject jsonObj;
		List<Object[]> list=new PrintDao().getBySQL(msg);
		for(Object[] obj : list){
			System.out.println(obj[10]+"dddd    ");
			
			System.out.println(obj.length);
			if(obj[9]==null){
				System.out.println("222222222");
			}
		}
		System.out.println(list.size());
		/*System.out.println(list.get(2));*/
	}

}
