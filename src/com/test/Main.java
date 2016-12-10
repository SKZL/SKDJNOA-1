package com.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.dao.Dao;
import com.dao.impl.CourseDao;
import com.dao.impl.PrintDao;
import com.po.Course;
import com.service.PrintService;
import com.vo.AttendanceVO;

public class Main {

	public static void main(String[] args) {
		/*JSONArray jsonArray=new JSONArray();
		try {
			for(int i=0;i<10;i++){
				JSONObject jsonObj= new JSONObject();
				jsonObj.put("name","login");
				jsonObj.put("descript","error");
				jsonArray.put(i,jsonObj);
			}
        } catch (JSONException e) {
            e.printStackTrace();
        }
		System.out.println(jsonArray.toString());*/
		/*String bjm="计算机科学与技术2014-1";
		String kcm="MFC程序设计";
		PrintDao pd=new PrintDao();
		List map =pd.query(kcm, bjm);
		System.out.println(map.get(1));*/
		String msg="{'bjm':'计算机科学与技术2014-1','kcm':'MFC程序设计'}";
		List<AttendanceVO> list=new ArrayList<AttendanceVO>();
		Dao printDao = new PrintDao();
		List<Object[]> objList=printDao.getBySQL(msg);
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
			list.add(avo);
		}
		for(AttendanceVO avo:list){
			System.out.println(avo.getCategory()+" "+avo.getClassId()+"  "+avo.getClassName()+"  "+avo.getCourseName()+"  "+avo.getCredits()+"  "+avo.getEnglishName()+"  "+avo.getSid()+"  "+avo.getSname()+"  "+avo.getYears());
		}
		/*try {
			JSONArray jsonArray=new JSONArray(msg);
			for(int i=0;i<10;i++){
				JSONObject jsonObj= new JSONObject();
				jsonObj.put("name","login");
				jsonObj.put("descript","error");
				jsonArray.put(i,jsonObj);
			}
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
		
		/*System.out.println("测试开始");
		Dao cDao= new CourseDao();
		String SQL="select t1.* from t_course t1,t_student t2,t_classname t3,t_coursestudent t4 where t1.cid=t4.cid and t2.sid=t4.sid and "
				+ "t2.classnameid=t3.cid and t3.cname='计算机科学与技术2014-1' and t1.category!='公选' "
				+ "group by t1.cid";
		List<Course> courseList = new ArrayList<Course>();
		courseList=cDao.getBySQL(SQL);
		for(Course c:courseList){
			System.out.println(c.getCname());
		}
*/
	}

}
