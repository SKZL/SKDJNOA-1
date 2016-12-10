<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<!--xmlns="http://www.w3.org/1999/html"  -->
<html lang="en" >
<head>
<!-- BEGIN META -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Olive Enterprise">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<!-- END META -->

<!-- BEGIN SHORTCUT ICON -->
<!--<link rel="shortcut icon" href="img/favicon.ico">-->
<!-- END SHORTCUT ICON -->
<title>山东科技大学学生成绩单录入</title>

<!-- BEGIN STYLESHEET -->
<link rel="stylesheet" href="css/main.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="css/bootstrap-reset.css" rel="stylesheet">
<!-- BOOTSTRAP CSS -->
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<!-- FONT AWESOME ICON STYLESHEET -->
<link href="assets/jquery-ui/jquery-ui-1.10.1.custom.min.css"
	rel="stylesheet">
<!-- JQUERY STYLESHEET -->
<link href="css/style.css" rel="stylesheet">
<!-- THEME BASIC CSS -->
<link href="css/style-responsive.css" rel="stylesheet">
<!-- THEME BASIC RESPONSIVE  CSS -->
<script type="text/javascript">
	function active() {
		$("#printscoreinput").attr("class", "active");
	}
	function KeyP(v) {
		document.getElementById("txt").value = 100 - v.value;

	}
	function a() {
		var p1 = document
				.getElementById("p1").value;
		var j1 = document
				.getElementById("txt").value;
		document.getElementById("f1").style.display = "block";
		document.getElementById("f2").style.display = "block";
	}
</script>
<!-- END STYLESHEET-->
</head>
<body onload="active(),setup()">
	<section id="container" class="">
    <!--header-->
     <%@ include file="publicpage/head.jsp" %>
    <!---->
        
      <!-- aside -->
      <%@ include file="publicpage/leftaside.jsp" %>
      <!---->
		 <form action="Source_add?page=input" method="post">
		<section id="main-content">
			<!-- BEGIN WRAPPER  -->
			<section class="wrapper">
				<!-- BEGIN ROW  -->
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading">
								<i class="fa fa-hand-o-down"> </i> <span
									class="label label-success" style="font-size: medium">
									成绩录入 </span>
							</header>
							<div id="qzxs">
								<div align="center">

									<span class="label label-success" style="font-size: medium">
										<i class="fa fa-pencil"> </i>请输入权重
									</span>
								</div>
								<table align="center" border="0" style="border-spacing: 100px">
									<tr>
										<td><br></td>
									</tr>
									<tr>
										
										<td width="55%"><span class="btn-info"
											style="font-size: medium">平时成绩权重：</span></td>

										<td width="40%"><input type="text" name="ordinaryProportion" id="p1" size="5"
											placeholder="0-100" onkeyup="KeyP(this)"><span>%</span></td>

									</tr>
									<tr>
										<td><span class="btn-info" style="font-size: medium">卷面成绩权重：</span></td>
										<td><input type="text" name="paperProportion" id="txt" size="5"
											placeholder="0-100" readonly="true"><span>%</span></td>

									</tr>
									<tr>
										<td><br></td>
									</tr>
									<div id="f3" align="center"
										style="float-left:100px;margin-left: 100px">
										<tr align="center" style="display: block">
											<td>

												<span class="btn btn-primary"
													style="font-size: 15px;margin-left: 100px"  onclick="a()">
													<i class="fa fa-sort-up"> </i> 保存
												</span>
											</td>
											<td>

												<input type="text" style="display: none" name="courseId" value="${list.get(0).getCourseId() }">
											</td>
										</tr>
										<tr>
											<td><br></td>
										</tr>
									</div>
								</table>

							</div>

							
							<div id="f1" class="f1" style="display: none;">
								<table width="750" cellspacing="0" cellpadding="0" border="0"
									align="center">
									<tbody>
										<tr>
											<td class="Font18" width="50%" valign="middle" align="center"><font
												size="5" face="黑体">山东科技大学学生课程成绩单</font><br>
											<br></td>
										</tr>
										<tr>
											<td>
												<table class="Font11PtX120" width="100%" cellspacing="0"
													cellpadding="0" border="0" align="center">
													<tbody>
														<tr valign="middle" align="left">
															<td height="24" width="40%" nowrap="nowrap" align="left">班级：<input type="text" name="className" readonly="readonly" style="border: 0px" value="${list.get(0).getClassName() }"></td>
															<td height="24" nowrap="nowrap" align="left" name="a2">班号：<input type="text" name="classId" readonly="readonly" style="border: 0px" value="${list.get(0).getClassId() }"></td>
															<td height="24" width="40%" nowrap="nowrap" align="left">学年/学期：<input type="text" name="year" readonly="readonly" style="border: 0px" value="${list.get(0).getYears() }"></td>
														</tr>
														<tr valign="middle" align="left">
															<td height="24" nowrap="nowrap" align="left">课程名称：<input type="text" name="course" readonly="readonly" style="border: 0px" value="${list.get(0).getCourseName() }"></td>
															<td height="24" nowrap="nowrap" align="left">学分：<input type="text" name="credits" readonly="readonly" style="border: 0px" value="${list.get(0).getCredits() }"></td>
															<td height="24" nowrap="nowrap" align="left">课程类别：<input type="text" name="category" readonly="readonly" style="border: 0px" value="${list.get(0).getCategory() }"></td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td valign="top">
												<table width="100%" cellspacing="0" cellpadding="0"
													border="0">
													<tbody>
														<tr valign="top" align="left">
															<td width="356">
																<table class="LUpLines" width="100%" cellspacing="0"
																	cellpadding="0" border="1" align="left">
																	<tbody>
																		<tr class="Font11PtX120" valign="middle"
																			align="center">
																			<td class="RULine" width="13%" nowrap="nowrap">学号</td>
																			<td class="RULine" width="10%" nowrap="nowrap">姓名</td>
																			<td class="RULine" width="18%" nowrap="nowrap">平时成绩</td>
																			<td class="RULine" name="final" width="18%"
																				nowrap="nowrap">卷面成绩</td>
																			<td style="display: none" class="RULine" id="xianshi2" class="xianshia"
																				width="22%" nowrap="nowrap" >最终成绩
																			</td>
																			<td class="RULine" width="18%" nowrap="nowrap">备注</td>
																		</tr>
																		
																		
																		<c:forEach items="${list}" var="att">
																		<tr class="Font8Pt" valign="top">
																			<td  class="RULine" ><center><input type="text"size="12" name="studentId" readonly="readonly" style="border: 0px" value="${att.getSid() }"></center></td>
																			<td class="RULine" nowrap="nowrap" ><center>
																				<input type="text" name="studentName" size="5" readonly="readonly" style="border: 0px" value="${att.getSname()}"></center></td>
																			<td class="RULine" nowrap="nowrap" align="center">
																				<input onFocus="this.value=''" name="ordinaryGrade" value="0"
																				 id="p2" class="ping" type="text" size="5"
																				placeholder="0-100" />
																			</td>
																			<td class="RULine" nowrap="nowrap" align="center">
																				<input onFocus="this.value=''" name="paperGrade" value="0"
																				 id="j2" class="juan" type="text" size="5"
																				placeholder="0-100" />
																			</td>
																			<td id="xianshi3" class="xianshia"
																				style="display: none" class="RULine" name="final1"
																				nowrap="nowrap" align="center">
																				<h5 name="finalGrade" onFocus="this.value=''" value="0"></h5>
																			</td>

																			<td class="RULine" nowrap="nowrap" align="center">
																				<select name="beizhu" id="mark"
																				style="text-align: center">
																					
																					<option value="1">无</option>
																					<option value="0">未选</option>
																					<option value="2">作弊</option>
																					<option value="3">违纪</option>
																					<option value="4">旷考</option>
																					<option value="5">缓考</option>
																					<option value="6">取消考试资格</option>
																			</select>
																			</td>
																		</tr>
																		</c:forEach>
																	</tbody>
																</table>
															</td>

														</tr>

													</tbody>


												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div id="xianshi" name="mark" style="display: none">
								<table id="tblMsg2" width="750" cellspacing="0" cellpadding="0"
									border="0" align="center">
									<tbody>
										<tr>
											<td></td>
										</tr>
										<tr>
											<td>
												<table class="Font12" width="100%" border="0" align="center">
													<tbody>
														<tr valign="top">
															<td nowrap="nowrap"><font color="#FF0000"><strong>&nbsp;</strong></font>
															</td>
															<td>&nbsp;</td>
														</tr>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td class="hengxian"></td>

										</tr>
										<tr>
											<td>注：&nbsp;1、不及格成绩请用红笔登记，无成绩者应在“备注”栏中注明原因；成绩填写不能使用复写纸；
												<br>

												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、成绩如有涂改，或无任课教师签字，则此单无效；
												<br>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、此单由任课教师填写，一式两份，考试后四天内分别送教务科和学生所在院（系、部）办公室。
											</td>
										</tr>
										<tr>
											<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、
												<table width="85%" border="1" align="center" cellpadding="0"
													cellspacing="0">

													<tr>
														<td nowrap="nowrap">成绩统计</td>
														<td nowrap="nowrap">90～100（优）</td>
														<td nowrap="nowrap">80～89（良）</td>
														<td nowrap="nowrap">70～79（中）</td>
														<td nowrap="nowrap">60～69（及格）</td>
														<td nowrap="nowrap">小于60（不及格）</td>
														<td nowrap="nowrap">平均成绩</td>
													</tr>
													<tr>
														<td nowrap="nowrap">人数</td>
														<td nowrap="nowrap"><input id="you" readonly="true" style="border: 0px"
															size="5" readonly="true"
															onclick="alert(FormatAfterDotNumber(docment.all.strTemp.value),2)"></td>
														<td nowrap="nowrap"><input id="liang" readonly="true"  style="border: 0px"
															size="5" readonly="true"></td>
														<td nowrap="nowrap"><input id="zhong" readonly="true" style="border: 0px"
															size="5" readonly="true"></td>
														<td nowrap="nowrap"><input id="jige" readonly="true" style="border: 0px"
															size="5" readonly="true"></td>
														<td nowrap="nowrap"><input id="notjige" style="border: 0px"
															readonly="true" size="5" readonly="true"></td>
														<td nowrap="nowrap" rowspan="2"><input id="pjcj" style="border: 0px"
															readonly="true" size="5"
															onclick="alert(FormatAfterDotNumber(docment.all.strTemp.value),2)"></td>
													</tr>
													<!--!!!!请看这里!!!!td中的空格不能去除，ie中td无内容就不显示下框线-->
													<tr>
														<td nowrap="nowrap">百分数</td>
														<td nowrap="nowrap"><input readonly="true" style="border: 0px" id="you1"
															size="5" readonly="true">%</td>
														<td nowrap="nowrap"><input readonly="true" style="border: 0px"
															id="liang1" size="5" readonly="true">%</td>
														<td nowrap="nowrap"><input readonly="true" style="border: 0px"
															id="zhong1" size="5" readonly="true">%</td>
														<td nowrap="nowrap"><input readonly="true" id="jige1" style="border: 0px"
															size="5" readonly="true"
															onclick="alert(FormatAfterDotNumber(docment.all.strTemp.value),2)">%</td>
														<td nowrap="nowrap"><input readonly="true" style="border: 0px"
															id="notjige1" size="5" readonly="true">%</td>


													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td><br></td>
										</tr>
										<tr>
											<td>
												<table width="80%" border="0" align="center" cellpadding="0"
													cellspacing="0">
													<tr>
														<td>任课教师签字：</td>
														<td>日期：</td>
													</tr>
												</table>
											</td>
										</tr>

									</tbody>
								</table>
							</div>

							<br> <br>

							<div id="f2" style="display: none">
								<table align="center">
									<tr>
										<td width="100px" style="float: left">

											<span name="boo" type="submit" class="btn btn-primary"
												style="font-size: medium;align-self: center">保存</span>
											<h5>
												<br>
											</h5>

										</td>
										<td style="margin-left: 100px">
										
												<button class="btn btn-primary"
													data-toggle="modal" data-toggle="modal" data-target="#mymodal-data" type="button">确认录入（不可修改）</button>
										
											<h5>
												<br>
											</h5></td>
									</tr>
								</table>
							</div>




							<div class="modal fade" id="mymodal-data" style="margin-bottom: 20px">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h4 class="modal-title">确认录入</h4>
										</div>
										<div class="modal-body" style="padding: 100px 100px 10px;">
											<div class="text-danger"
												style="font-size: medium;margin: auto">请再次确认保存，并确认数据输入无误后，确认提交</div>
										</div>
										<div class="modal-footer">
											<button class="btn btn-default" type="submit">确认提交</button>
											<a href="#"><button class="btn btn-success"
													type="button">返回</button> </a>
										</div>
									</div>
								</div>
							</div>







						</section>
					</div>
				</div>
				<!-- END ROW  -->

			</section>
			</form>
			<!-- END WRAPPER  -->

			<!-- END MAIN CONTENT -->
			<!-- START FOOTER -->
			<%@ include file="publicpage/footer.jsp"%>
			<!-- END FOOTER -->
		</section>
		<!-- START JS -->
		 <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script><!-- BOOTSTRAP JS -->
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/message_zn.js"></script>
    <script src="js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDIN JS -->
    <script src="js/jquery.scrollTo.min.js"></script><!-- SCROLLTO JS -->
    <script src="js/jquery.nicescroll.js"></script><!-- NICESCROLL JS -->
    <script src="js/respond.min.js"></script><!-- RESPOND JS -->
    <script src="js/jquery.sparkline.js"></script><!-- SPARKLINE JS -->
    <script src="js/sparkline-chart.js"></script><!-- SPARKLINE CHART JS -->
    <script src="js/common-scripts.js"></script><!-- BASIC COMMON JS -->
    <script src="js/count.js"></script><!-- COUNT JS -->


		<script>
			if (!document.getElementsByClassName) {
				document.getElementsByClassName = function(className, element) {
					var children = (element || document)
							.getElementsByTagName('*');
					var elements = new Array();
					for (var i = 0; i < children.length; i++) {
						var child = children[i];
						var classNames = child.className.split(' ');
						for (var j = 0; j < classNames.length; j++) {
							if (classNames[j] == className) {
								elements.push(child);
								break;
							}
						}
					}
					return elements;
				};
			}
			var h5s = document.getElementsByTagName("h5");
			var pings = document.getElementsByClassName("ping");
			var juans = document.getElementsByClassName("juan");
			var button = document.getElementsByName("boo")[0];
			var bs = document.getElementsByTagName("b");

			$(document)
					.ready(
							function() {
								button.onclick = function() {
									document.getElementById("xianshi").style.display = "block";
									document.getElementById("xianshi2").style.display = "block";
									$(".xianshia").show();
									var p1 = document.getElementById("p1").value / 100;
									var j1 = document.getElementById("txt").value / 100;

									var sums = new Array();
									for (var i = 0; i < pings.length; i++) {
										sums[i] = parseFloat(pings[i].value)
												* p1
												+ parseFloat(juans[i].value)
												* j1;
										//            $("h5").text("添加的内容");
										   sums[i] = Math.round(sums[i] * 100) / 100;
										h5s[i].innerHTML = sums[i];
										//console.log(sums[i]);
										//                    console.log(p1);
										//                    console.log(j1);
									}
									var you = 0;
									var liang = 0;
									var zhong = 0;
									var jige = 0;
									var notjige = 0;
									var avg = 0;
									var he = 0;

									for (var j = 0; j < sums.length; j++) {
										he += parseFloat(sums[j]);
										if (parseFloat(sums[j]) < 60) {
											notjige++;
										} else if (parseFloat(sums[j]) >= 90) {
											you++;
										} else if (parseFloat(sums[j]) >= 80
												& parseFloat(sums[j]) < 90) {
											liang++;
										} else if (parseFloat(sums[j]) >= 70
												& parseFloat(sums[j]) < 80) {
											zhong++;
										} else {
											jige++;
										}
									}
									
									var you1 = 100 * you / pings.length;
									var liang1 = 100 * liang / pings.length;
									var zhong1 = 100 * zhong / pings.length;
									var jige1 = 100 * jige / pings.length;
									var notjige1 = 100 * notjige / pings.length;
									 you1=Math.round(you1 * 100) / 100;
									 liang1=Math.round(liang1 * 100) / 100;
									 zhong1=Math.round(zhong1 * 100) / 100;
									 jige1=Math.round(jige1 * 100) / 100;
									 notjige1=Math.round(notjige1 * 100) / 100;
									var he1 = he/ pings.length;
									document.getElementById("pjcj").value = Math.round(he1 * 100) / 100;
									document.getElementById("you").value = you;
									document.getElementById("liang").value = liang;
									document.getElementById("zhong").value = zhong;
									document.getElementById("jige").value = jige;
									document.getElementById("notjige").value = notjige;
									document.getElementById("you1").value = you1;
									document.getElementById("liang1").value = liang1;
									document.getElementById("zhong1").value = zhong1;
									document.getElementById("jige1").value = jige1;
									document.getElementById("notjige1").value = notjige1;

								}
							});
			function FormatAfterDotNumber(ValueString, nAfterDotNum) {
				var ValueString, nAfterDotNum;
				var resultStr, nTen;
				ValueString = "" + ValueString + "";
				strLen = ValueString.length;
				dotPos = ValueString.indexOf(".", 0);
				if (dotPos == -1) {
					resultStr = ValueString + ".";
					for (i = 0; i < nAfterDotNum; i++) {
						resultStr = resultStr + "0";
					}
					return resultStr;
				} else {
					if ((strLen - dotPos - 1) >= nAfterDotNum) {
						nAfter = dotPos + nAfterDotNum + 1;
						nTen = 1;
						for (j = 0; j < nAfterDotNum; j++) {
							nTen = nTen * 10;
						}
						resultStr = Math.round(parseFloat(ValueString) * nTen)
								/ nTen;
						return resultStr;
					} else {
						resultStr = ValueString;
						for (i = 0; i < (nAfterDotNum - strLen + dotPos + 1); i++) {
							resultStr = resultStr + "0";
						}
						return resultStr;
					}
				}
			}
		</script>

	</section>
</body>
</html>
