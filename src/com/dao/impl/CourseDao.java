package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.json.JSONException;
import org.json.JSONObject;

import com.dao.Dao;
import com.db.HibernateSessionFactory;
import com.po.Course;

public class CourseDao implements Dao{

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
	public List<Course> query(String msg) {
		JSONObject jsonObj = null;
		String professional="";
		String status="";
		try {
			jsonObj = new JSONObject(msg);
			professional=jsonObj.getString("professional");
			status=jsonObj.getString("status");
			System.out.println(jsonObj.toString());
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("进入到数据库查询类CourseDso");
		String SQL="select t1.* from t_course t1,t_student t2,t_classname t3,t_coursestudent t4 where t1.cid=t4.cid and t2.sid=t4.sid and "
				+ "t2.classnameid=t3.cid and t3.cname='"+professional+"' and t2.status='"+status 
				+ "' group by t1.cid";
		List<Course> courseList = new ArrayList<Course>();
		Session session = HibernateSessionFactory.getSession();
		System.out.println("获取session后，将要开启事务！！！！");
		session.beginTransaction();
		System.out.println("com.dao：数据库查询开始");
		try {
			courseList=session.createSQLQuery(SQL).addEntity(Course.class).list();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("com.dao：数据库查询结束");
		HibernateSessionFactory.closeSession();
		return courseList;
	}

	@Override
	public List<Course> getPage(int page, int count) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Course> getBySQL(String SQL) {
		// TODO Auto-generated method stub
				return null;
	}
	public static void main(String[] args) {
		CourseDao cd = new CourseDao();
		List<Course> courseList = new ArrayList<Course>();
		String professional="计算机科学与技术2014-1";
		String status="在校";
		String msg="{'professional':'"+professional+"','status':'"+status+"'}";
		courseList=cd.query(msg);
		for(Course c:courseList){
			System.out.println(c.getCname());
		}
	}

}
