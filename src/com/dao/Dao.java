package com.dao;

import java.util.List;

public interface Dao {

	public boolean add(Object obj);
	public boolean del(Object obj);
	public Object get(int id);
	public boolean update(Object obj);
	public List query(String hql);
	public List getPage(int page,int count);
	public List getBySQL(String SQL);

}
