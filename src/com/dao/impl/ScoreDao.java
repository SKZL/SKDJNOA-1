package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.json.JSONException;
import org.json.JSONObject;

import com.dao.Dao;
import com.db.HibernateSessionFactory;
import com.po.ScoreManagement;

public class ScoreDao implements Dao {

	public boolean addAll(List<ScoreManagement> scm) {
		Session session = HibernateSessionFactory.getSessionFactory()
				.getCurrentSession();
		session.beginTransaction();
		try {
			for (int i = 0; i < scm.size(); i++) {
				session.save(scm.get(i));
			}
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			session.getTransaction().rollback();
			e.printStackTrace();
		}
		return false;

	}

	@Override
	public boolean del(Object obj) {
		// TODO Auto-generated method stub
		return false;
	}

	@SuppressWarnings("unchecked")
	public List<ScoreManagement> get(int courseid, int classid) {

		Session session = HibernateSessionFactory.getSessionFactory()
				.getCurrentSession();
		session.beginTransaction();
		String sql = "select t.* from t_scoremanagement t where t.courseId="
				+ courseid + " and t.classId=" + classid;
		List<ScoreManagement> sm = new ArrayList<ScoreManagement>();
		try {
			sm = session.createSQLQuery(sql).addEntity(ScoreManagement.class)
					.list();
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return sm;
	}

	@Override
	public boolean update(Object obj) {
		// TODO Auto-generated method stub
		return false;
	}

	// 返回已录入课程成绩

	public List<ScoreManagement> query(String SQL) {
		JSONObject jsonObj = null;
		String bjm = "";
		String kcm = "";
		try {
			jsonObj = new JSONObject(SQL);
			bjm = jsonObj.getString("bjm");
			kcm = jsonObj.getString("kcm");
			System.out.println(jsonObj.toString());
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<ScoreManagement> list = null;
		String HQL = "select t.* from t_scoremanagement t where t.className='"
				+ bjm + "' and t.coursename='" + kcm + "'";
		Session session = HibernateSessionFactory.getSession();
		System.out.println("获取session后，将要开启事务！！！！");
		session.beginTransaction();
		System.out.println("com.dao：数据库查询开始");
		list = session.createSQLQuery(HQL).addEntity(ScoreManagement.class)
				.list();
		System.out.println("com.dao：数据库查询结束");
		HibernateSessionFactory.closeSession();
		return list;
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

	@Override
	public boolean add(Object obj) {
		return false;

	}

	public static void main(String args[]) {
		ScoreDao ss = new ScoreDao();
		List<ScoreManagement> s = ss.get(3, 142042);
		if (s.size() < 1) {
			System.out.println("11111");
		}
	}

	@Override
	public Object get(int id) {
		// TODO Auto-generated method stub
		return null;
	}
}
