package com.service;

import java.util.ArrayList;
import java.util.List;

import com.dao.Dao;
import com.dao.impl.CourseDao;
import com.po.Course;

public class GetCourse {
	
	public static List<Course> byTeacher(int teacherid){
		List<Course> courseList = new ArrayList<Course>();
		
		return courseList;
	}
	public static List byProfessional(String professional,String category,String status){
		List<Course> courseList = new ArrayList<Course>();
		List list=new ArrayList();
		Dao cDao = new CourseDao();
		String msg="{'professional':'"+professional+"','status':'"+status+"'}";
		courseList=cDao.query(msg);
		if(category.equals("非公选")){
			for(Course c:courseList){
				if(!c.getCategory().equals("公选")){
					list.add(c.getCname());
				}
			}
		}
		if(category.equals("公选")){
			for(Course c:courseList){
				if(c.getCategory().equals("公选")){
					list.add(c.getCname());
				}
			}
		}
		return list;
	}
	

}
