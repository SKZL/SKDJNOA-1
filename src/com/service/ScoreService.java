package com.service;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import com.dao.impl.ScoreDao;
import com.po.ScoreManagement;
import com.vo.CourseResultVO;

public class ScoreService {
	// 该方法返回查询已录入的班级及课程成绩
	public static List<ScoreManagement> printScore(String bjm, String kcm) {
		String SQL = "{'bjm':'" + bjm + "','kcm':'" + kcm + "'}";
		List<ScoreManagement> list = new ArrayList<ScoreManagement>();
		ScoreDao dao = new ScoreDao();
		list = dao.query(SQL);
		return list;
	}

	public static CourseResultVO scoreResult(List<ScoreManagement> list) {
		int stu1 = 0;
		int stu2 = 0;
		int stu3 = 0;
		int stu4 = 0;
		int stu5 = 0;
		int stu6=0;
		String s1 = "";
		String s2 = "";
		String s3 = "";
		String s4 = "";
		String s5 = "";
		String avg = "";
		float ordinaryProportion=list.get(0).getOrdinaryProportion();
		
		float paperProportion=list.get(0).getPaperProportion();
		float sum=0;
		System.out.println("start");
		for (ScoreManagement s : list) {
			if (Float.parseFloat(s.getFinalGrade()) >= 90) {
				stu1 += 1;
			}
			if (Float.parseFloat(s.getFinalGrade()) >= 80
					&& Float.parseFloat(s.getFinalGrade()) < 90) {
				stu2 += 1;
			}
			if (Float.parseFloat(s.getFinalGrade()) >= 70
					&& Float.parseFloat(s.getFinalGrade()) <= 80) {
				stu3 += 1;
			}
			if (Float.parseFloat(s.getFinalGrade()) >= 60
					&& Float.parseFloat(s.getFinalGrade()) < 70) {
				stu4 += 1;
			}
			if (Float.parseFloat(s.getFinalGrade()) < 60) {
				stu5 += 1;
			}
			sum+=Float.parseFloat(s.getFinalGrade());
			stu6+=1;
		}
		DecimalFormat formater = new DecimalFormat("#0.##");
		s1=formater.format((float)stu1/(float)stu6*100);
		s2=formater.format((float)stu2/(float)stu6*100);
		s3=formater.format((float)stu3/(float)stu6*100);
		s4=formater.format((float)stu4/(float)stu6*100);
		s5=formater.format((float)stu5/(float)stu6*100);
		avg=formater.format((float)sum/(float)stu6);
		String o=formater.format(ordinaryProportion);
		String p=formater.format(paperProportion);
		System.out.println("end");
		CourseResultVO cvo=new CourseResultVO(stu1,stu2,stu3,stu4,stu5,s1+"%",s2+"%",s3+"%",s4+"%",s5+"%",avg,p+"%",o+"%");
		return cvo;
	}

	public static void main(String args[]) {

		DecimalFormat formater = new DecimalFormat("#0.##");
		 System.out.println(formater.format(58.7897456));
		
		List<ScoreManagement> list1 = printScore("计算机科学与技术2014-1",
				"Android智能终端技术基础");
		for (ScoreManagement s : list1) {
			System.out.println(s.getStudentName());
		}
	}
}
