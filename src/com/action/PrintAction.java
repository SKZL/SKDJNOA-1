package com.action;

import java.util.List;


import com.opensymphony.xwork2.ActionSupport;
import com.service.PrintService;
import com.vo.AttendanceVO;

@SuppressWarnings("serial")
public class PrintAction extends ActionSupport {
	
	private String bjm;
	private String year;
	private String kcm;
	private String page;
	private String nextPage;
	private List<AttendanceVO> list;
	
	public String printFunction(){
		System.out.println(bjm+"  "+kcm+"   "+page);
		if(bjm == null || kcm == null){
			return "printError";
		}
		list =PrintService.printAttendance(bjm, kcm);
		System.out.println("list集合中的对象数："+list.size());
		/*HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("list", list);
		System.out.println(request.getAttribute("list"));*/
		if(list.size()==0||list==null){
			return "printError";
		}else{
			nextPage="print"+page;
		}
		return "printSuccess";
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

	public String getBjm() {
		return bjm;
	}

	public void setBjm(String bjm) {
		this.bjm = bjm;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getKcm() {
		return kcm;
	}

	public void setKcm(String kcm) {
		this.kcm = kcm;
	}

	public List<AttendanceVO> getList() {
		return list;
	}

	public void setList(List<AttendanceVO> list) {
		this.list = list;
	}
	
	
	

}
