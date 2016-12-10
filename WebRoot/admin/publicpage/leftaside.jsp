<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<aside>
	<div id="sidebar" class="nav-collapse">
		<ul class="sidebar-menu" id="nav-accordion">
			<li><a href="Users_judgeLogin?page=index" id="index" class="">
					<i class="fa fa-dashboard"> </i> <span style="font-size: medium">
						<h4>主页</h4>
				</span>
			</a></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-print"> </i> <span style="font-size: medium">
						输出管理 </span>
			</a>
				<ul class="sub">
					<li><a href="Users_judgeLogin?page=attendance" id="attendance"
						class=""> 上课考勤表打印 </a></li>
					<li><a href="Users_judgeLogin?page=regulargrade"
						id="regulargrade" class=""> 平时成绩单打印 </a></li>
					<li><a href="Users_judgeLogin?page=coursegrade"
						id="coursegrade" class=""> 最终成绩单打印 </a></li>
					<li><a href="Users_judgeLogin?page=publiccourse"
						id="publiccourse" class=""> 公选课成绩单打印 </a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-pencil"> </i> <span style="font-size: medium">
						成绩录入 </span>
			</a>


				<ul class="sub">
					<li><a href="Users_judgeLogin?page=classfind">课程成绩录入</a></li>
					<li><a href="Users_judgeLogin?page=classfind_1">已录入课程成绩单打印</a></li>

				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-search"> </i> <span style="font-size: medium">
						信息查询 </span>
			</a>
				<ul class="sub">
					<li><a href="#"> 基本信息查询 </a></li>
					<li><a href="#"> 考勤信息查询 </a></li>
					<li><a href="#"> 成绩信息查询 </a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-edit"> </i> <span style="font-size: medium">
						信息修改 </span>
			</a>
				<ul class="sub">
					<li><a href="#"> 基本信息修改 </a></li>
					<li><a href="#"> 考勤信息修改 </a></li>
					<li><a href="#"> 成绩信息修改 </a></li>
				</ul></li>
		</ul>
	</div>
</aside>

