package com.service;

import java.util.ArrayList;
import java.util.List;

import com.dao.Dao;
import com.dao.impl.PrintDao;
import com.vo.AttendanceVO;

public class PrintService {
	
	public static List<AttendanceVO> printAttendance(String bjm, String kcm){
		String SQL="{'bjm':'"+bjm+"','kcm':'"+kcm+"'}";
		List<AttendanceVO> list=new ArrayList<AttendanceVO>();
		Dao printDao = new PrintDao();
		List<Object[]> objList=printDao.getBySQL(SQL);
		for(Object[] obj:objList){
			AttendanceVO avo=new AttendanceVO();
			avo.setCategory(obj[0].toString());
			avo.setClassId(Integer.parseInt(obj[1].toString()));
			avo.setClassName(obj[2].toString());
			avo.setCourseName(obj[3].toString());
			avo.setCredits(Integer.parseInt(obj[4].toString()));
			avo.setEnglishName(obj[5].toString());
			avo.setSid(obj[6].toString());
			avo.setSname(obj[7].toString());
			avo.setYears(obj[8].toString());
			if(obj[9]!=null){
				avo.setClassEnglish(obj[9].toString());
			}
			avo.setCourseId(Integer.parseInt(obj[10].toString()));
			list.add(avo);
		}
		return list;
	}

}
