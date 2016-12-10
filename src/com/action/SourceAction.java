package com.action;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import com.dao.impl.ScoreDao;
import com.po.ScoreManagement;
import com.service.ScoreService;
import com.vo.CourseResultVO;

@SuppressWarnings("serial")
public class SourceAction extends SupureAction {
	private int classId;
	private String className;
	private String year;
	private String category;
	private String course;
	private int courseId;
	private int credits;
	private float paperProportion;
	private float ordinaryProportion;
	private String resetGrade1;
	private String resetGrade2;
	private String resetGrade3;
	private String page;
	private String nextPage;
	private List<ScoreManagement> list;
	private CourseResultVO cr;

	public String add() {
		ScoreDao sdao = new ScoreDao();
		if (sdao.get(courseId, classId).size() < 1) {// 是否已经录入
			String[] studentname = request.getParameterValues("studentName");
			String[] studentid = request.getParameterValues("studentId");
			String[] pagergrade = request.getParameterValues("paperGrade");
			String[] ordinarygrade = request
					.getParameterValues("ordinaryGrade");
			String[] bz = request.getParameterValues("beizhu");
			List<ScoreManagement> sm = new ArrayList<ScoreManagement>();
			for (int i = 0; i < studentname.length; i++) {
				float finalgrade = (Float.parseFloat(pagergrade[i]) * paperProportion)
						/ 100
						+ (Float.parseFloat(ordinarygrade[i]) * ordinaryProportion)
						/ 100;

				DecimalFormat formater = new DecimalFormat("#0.##");

				String fianlgrade1 = formater.format(finalgrade);
				String bz1 = "";
				if (bz[i].equals("1")) {
					bz1 = "无";
				}
				if (bz[i].equals("0")) {
					bz1 = "未选";
				}
				if (bz[i].equals("2")) {
					bz1 = "作弊";
				}
				if (bz[i].equals("3")) {
					bz1 = "违纪";
				}
				if (bz[i].equals("4")) {
					bz1 = "旷考";
				}
				if (bz[i].equals("5")) {
					bz1 = "缓考";
				}
				if (bz[i].equals("6")) {
					bz1 = "取消考试资格";
				}
				// if(!pagergrade[i].equals("0")&&!ordinarygrade[i].equals("0")&&!bz[i].equals("1")){
				ScoreManagement s = new ScoreManagement(studentid[i],
						studentname[i], classId, className, year, category,
						course, courseId, credits, paperProportion,
						ordinaryProportion, pagergrade[i], ordinarygrade[i],
						fianlgrade1, bz1, "", "", "");
				sm.add(s);
				// }else{
				// return "error";
				// }

			}
			if (sdao.addAll(sm)) {
				return "Success";

			} else {
				return "error";
			}
		} else {
			return "Fail";
		}
	}

	// 考查课录入
	public String addfkc() {

		ScoreDao sdao = new ScoreDao();
		if (sdao.get(courseId, classId).size() < 1) {// 是否已经录入
			String[] studentname = request.getParameterValues("studentName");
			String[] studentid = request.getParameterValues("studentId");
			String[] finalGrade = request.getParameterValues("finalGrade");
			String[] bz = request.getParameterValues("beizhu");
			List<ScoreManagement> sm = new ArrayList<ScoreManagement>();
			for (int i = 0; i < studentname.length; i++) {
				String bz1 = "";
				String finalGrade1 = "";
				if (bz[i].equals("1")) {
					bz1 = "无";
				}
				if (bz[i].equals("0")) {
					bz1 = "未选";
				}
				if (bz[i].equals("2")) {
					bz1 = "作弊";
				}
				if (bz[i].equals("3")) {
					bz1 = "违纪";
				}
				if (bz[i].equals("4")) {
					bz1 = "旷考";
				}
				if (bz[i].equals("5")) {
					bz1 = "缓考";
				}
				if (bz[i].equals("6")) {
					bz1 = "取消考试资格";
				}
				if (finalGrade[i].equals("1")) {
					finalGrade1 = "优";
				}
				if (finalGrade[i].equals("2")) {
					finalGrade1 = "良";
				}

				if (finalGrade[i].equals("3")) {
					finalGrade1 = "中";
				}
				if (finalGrade[i].equals("4")) {
					finalGrade1 = "及格";
				}

				if (finalGrade[i].equals("5")) {
					finalGrade1 = "不及格";
				}

				// if(!pagergrade[i].equals("0")&&!ordinarygrade[i].equals("0")&&!bz[i].equals("1")){
				ScoreManagement s = new ScoreManagement(studentid[i],
						studentname[i], classId, className, year, category,
						course, courseId, credits, paperProportion,
						ordinaryProportion, "", "", finalGrade1, bz1, "", "",
						"");
				sm.add(s);
				// }else{
				// return "error";
				// }

			}
			if (sdao.addAll(sm)) {
				return "Success";

			} else {
				return "error";
			}
		} else {
			return "Fail";
		}
	}

	// 按班级以及课程查询已录入课程成绩
	public String query() {
		System.out.println(className + "  " + course + "   " + page);
		if (className == null || course == null) {
			return "printError";
		}
		list = ScoreService.printScore(className, course);
		
			if (list.size() == 0 || list == null) {
				return "Fail";
			} else {
				//是否为考察课
				
				if (list.get(0).getFinalGrade().equals("优")
						|| list.get(0).getFinalGrade().equals("良")
						|| list.get(0).getFinalGrade().equals("中")
						|| list.get(0).getFinalGrade().equals("差")
						|| list.get(0).getFinalGrade().equals("及格")
						|| list.get(0).getFinalGrade().equals("不及格")) {
					
					nextPage = "print" + page;
					return "printfkcSuccess";
				}
				
				
				

				// 计算该班成绩结果
				if (list.get(0).getCourse().equals("Electrical Power Design")
						|| list.get(0).getCourse()
								.equals("Design of RF-analogue electronics")
						|| list.get(0).getCourse()
								.equals("Analogue Electronic Design")) {
					nextPage = "printBT" + page;
					return "BTSuccess";
				}
				
				cr = ScoreService.scoreResult(list);
				nextPage = "print" + page;
			}
			return "printSuccess";
		
	}

	public int getClassId() {
		return classId;
	}

	public void setClassId(int classId) {
		this.classId = classId;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getCredits() {
		return credits;
	}

	public void setCredits(int credits) {
		this.credits = credits;
	}

	public float getPaperProportion() {
		return paperProportion;
	}

	public void setPaperProportion(float paperProportion) {
		this.paperProportion = paperProportion;
	}

	public float getOrdinaryProportion() {
		return ordinaryProportion;
	}

	public void setOrdinaryProportion(float ordinaryProportion) {
		this.ordinaryProportion = ordinaryProportion;
	}

	public String getResetGrade1() {
		return resetGrade1;
	}

	public void setResetGrade1(String resetGrade1) {
		this.resetGrade1 = resetGrade1;
	}

	public String getResetGrade2() {
		return resetGrade2;
	}

	public void setResetGrade2(String resetGrade2) {
		this.resetGrade2 = resetGrade2;
	}

	public String getResetGrade3() {
		return resetGrade3;
	}

	public void setResetGrade3(String resetGrade3) {
		this.resetGrade3 = resetGrade3;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getNextPage() {
		return nextPage;
	}

	public void setNextPage(String nextPage) {
		this.nextPage = nextPage;
	}

	public List<ScoreManagement> getList() {
		return list;
	}

	public void setList(List<ScoreManagement> list) {
		this.list = list;
	}

	public CourseResultVO getCr() {
		return cr;
	}

	public void setCr(CourseResultVO cr) {
		this.cr = cr;
	}

}
