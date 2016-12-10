package com.po;

import java.util.Set;

public class Course {
	private int cid;
	private String cname;
	private String category;
	private int credits;
	private String time;
	private int beginTime;
	private String year;
	private int endTime;
	private Teacher teachers;
	private Set<Student> students;
	public Course() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Course(int cid, String cname, String category, int credits,
			String time, int beginTime, String year, int endTime,
			Teacher teachers, Set<Student> students) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.category = category;
		this.credits = credits;
		this.time = time;
		this.beginTime = beginTime;
		this.year = year;
		this.endTime = endTime;
		this.teachers = teachers;
		this.students = students;
	}

	public Set<Student> getStudents() {
		return students;
	}

	public void setStudents(Set<Student> students) {
		this.students = students;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getCredits() {
		return credits;
	}
	public void setCredits(int credits) {
		this.credits = credits;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getBeginTime() {
		return beginTime;
	}
	public void setBeginTime(int beginTime) {
		this.beginTime = beginTime;
	}
	public int getEndTime() {
		return endTime;
	}
	public void setEndTime(int endTime) {
		this.endTime = endTime;
	}
	public Teacher getTeachers() {
		return teachers;
	}
	public void setTeachers(Teacher teachers) {
		this.teachers = teachers;
	}
	

}
