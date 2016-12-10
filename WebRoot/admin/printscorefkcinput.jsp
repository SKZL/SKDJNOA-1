<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <!-- END META -->

    <!-- BEGIN SHORTCUT ICON -->
    <!--<link rel="shortcut icon" href="img/favicon.ico">-->
    <!-- END SHORTCUT ICON -->
    <title>山东科技大学学生课程成绩单录入</title>

    <!-- BEGIN STYLESHEET -->
    <link rel="stylesheet" href="css/main.css">
    <link href="css/bootstrap.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet"><!-- FONT AWESOME ICON STYLESHEET -->
    <link href="assets/jquery-ui/jquery-ui-1.10.1.custom.min.css" rel="stylesheet"><!-- JQUERY STYLESHEET -->
    <link href="css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
    <link href="css/style-responsive.css" rel="stylesheet"><!-- THEME BASIC RESPONSIVE  CSS -->
    <!-- CALENDER CSS -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js">
    </script>
    <script src="js/respond.min.js">
    </script>

    <style>
        .error{
            color:lightskyblue;
        }
    </style>
    <![endif]-->
    <!-- END STYLESHEET-->
</head>
<script type="text/javascript">
	function active() {
		$("#printscorefkcinput").attr("class", "active");
	}
	
</script>
<body onload="active(),setup()">
<section id="container" class="">
    <!--header-->
     <%@ include file="publicpage/head.jsp" %>
    <!---->
        
      <!-- aside -->
      <%@ include file="publicpage/leftaside.jsp" %>
      <!---->
		 <form action="Source_addfkc?page=input" method="post">
		<section id="main-content">
			<!-- BEGIN WRAPPER  -->
			<section class="wrapper">
				<!-- BEGIN ROW  -->
				<div class="row">
					<div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <i class="fa fa-hand-o-down">
                            </i>
                            <span class="label label-success" style="font-size: medium">
                    成绩录入
                  </span>
                        </header>


                        <div id="f1" class="f1">
                            <table width="750" cellspacing="0" cellpadding="0" border="0" align="center">
                                <tbody>
                                <tr>
                                    <td class="Font18" width="50%" valign="middle" align="center"><font size="5" face="黑体">山东科技大学学生课程成绩单</font><br><br>
                                    </td>
                                    <td>

										<input type="text" style="display: none" name="courseId" value="${list.get(0).getCourseId() }">
									</td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="Font11PtX120" width="100%" cellspacing="0" cellpadding="0" border="0"
                                               align="center">
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
                                        <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                            <tbody>
                                            <tr valign="top" align="left">
                                                <td width="356">
                                                    <table class="LUpLines" width="100%" cellspacing="0" cellpadding="0"
                                                           border="1" align="left">
                                                        <tbody>
                                                        <tr class="Font11PtX120" valign="middle" align="center">
                                                            <td class="RULine" width="10%" nowrap="nowrap">学号</td>
                                                            <td class="RULine" width="18%" nowrap="nowrap">姓名</td>
                                                            <td class="RULine" id="xianshi2" class="xianshia" width="18%" nowrap="nowrap"
                                                              >最终成绩
                                                            </td>
                                                            <td class="RULine" width="18%" nowrap="nowrap">备注</td>
                                                        </tr>
                                                        <c:forEach items="${list}" var="att">
                                                        <tr class="Font8Pt" valign="top">
                                                            <td class="RULine" align="center">
                                                                <center><input type="text"size="12" name="studentId" readonly="readonly" style="border: 0px" value="${att.getSid() }"></center>
                                                            </td>
                                                            <td class="RULine" nowrap="nowrap" align="center">
                                                               <center>
																				<input type="text" name="studentName" size="5" readonly="readonly" style="border: 0px" value="${att.getSname()}"></center>
                                                            </td>

                                                            <td id="xianshi3" class="RULine" name="final1" nowrap="nowrap" align="center">
                                                                <select name="finalGrade" id="rank">
                                                                    <option value="1">优</option>
                                                                    <option value="2">良</option>
                                                                    <option value="3">中</option>
                                                                    <option value="4">及格</option>
                                                                    <option value="5">不及格</option>
                                                                </select>
                                                            </td>

                                                            <td class="RULine" nowrap="nowrap" align="center">
                                                                <select name="beizhu" id="mark" style="text-align: center">
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

                        <div id="xianshi" name="mark" >
                            <table id="tblMsg2" width="750" cellspacing="0" cellpadding="0" border="0" align="center">
                                <tbody>
                                <tr>
                                    <td>
                                    </td>
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
                                    <td>

                                        注：&nbsp;1、不及格成绩请用红笔登记，无成绩者应在“备注”栏中注明原因；成绩填写不能使用复写纸；
                                        <br>

                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、成绩如有涂改，或无任课教师签字，则此单无效；
                                        <br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、此单由任课教师填写，一式两份，考试后四天内分别送教务科和学生所在院（系、部）办公室。
                                    </td>
                                </tr>
                                <tr>
                                    <td>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、
                                        <table width="85%" border="1" align="center" cellpadding="0" cellspacing="0">

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
                                                <td nowrap="nowrap"><input  id="you" readonly="true" size="5" readonly="true" onclick="alert(FormatAfterDotNumber(docment.all.strTemp.value),2)"></td>
                                                <td nowrap="nowrap"><input  id="liang" readonly="true" size="5" readonly="true"></td>
                                                <td nowrap="nowrap"><input  id="zhong" readonly="true" size="5" readonly="true"></td>
                                                <td nowrap="nowrap"><input  id="jige" readonly="true" size="5" readonly="true"></td>
                                                <td nowrap="nowrap"><input id="notjige" readonly="true" size="5" readonly="true"></td>
                                                <td nowrap="nowrap" rowspan="2"><input id="pjcj" readonly="true" size="5" onclick="alert(FormatAfterDotNumber(docment.all.strTemp.value),2)"></td>
                                            </tr><!--!!!!请看这里!!!!td中的空格不能去除，ie中td无内容就不显示下框线-->
                                            <tr>
                                                <td nowrap="nowrap">百分数</td>
                                                <td nowrap="nowrap"><input readonly="true"  id="you1" size="5" readonly="true">%</td>
                                                <td nowrap="nowrap"><input readonly="true"  id="liang1"  size="5" readonly="true">%</td>
                                                <td nowrap="nowrap"><input readonly="true"  id="zhong1" size="5"  readonly="true">%</td>
                                                <td nowrap="nowrap"><input readonly="true"  id="jige1" size="5" readonly="true" onclick="alert(FormatAfterDotNumber(docment.all.strTemp.value),2)">%</td>
                                                <td nowrap="nowrap"><input readonly="true"  id="notjige1" size="5"  readonly="true">%</td>


                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    任课教师签字：
                                                </td>
                                                <td>
                                                    日期：
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>

                        <br>
                        <br>

                        <div id="f2" >
                            <table align="center">
                                <tr>
                                    <td width="100px" style="float: left">

                                        <span name="boo" type="submit" class="btn btn-primary"
												style="font-size: medium;align-self: center">保存</span>
                                        <h5><br></h5>

                                    </td>
                                    <td style="margin-left: 100px">
                                       <button class="btn btn-primary"
													data-toggle="modal" data-toggle="modal" data-target="#mymodal-data" type="button">确认录入（不可修改）</button>
										
                                        <h5><br></h5>
                                    </td>
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
        <!-- END WRAPPER  -->

        <!-- END MAIN CONTENT -->
        <!-- START FOOTER -->
        <footer class="site-footer">
            <div class="text-center">
                Copyright &copy; 2016 山东科技大学济南校区教科部版权所有

            </div>
        </footer>
        <!-- END FOOTER -->
    </section>
    <!-- START JS -->
    <script src="js/jquery.js"></script><!-- BASIC JS LIABRARY -->
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script><!-- BOOTSTRAP JS  -->
    <script src="js/jquery.dcjqaccordion.2.7.js"></script><!-- ACCORDING JS -->
    <script src="js/jquery.scrollTo.min.js"></script><!-- SCROLLTO JS  -->
    <script src="js/jquery.nicescroll.js"></script><!-- NICESCROLL JS  -->
    <script src="assets/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script><!-- BASIC JS LIABRARY -->
    <script src="js/jquery.ui.touch-punch.min.js"></script><!-- TOUCH PUNCH JS -->
    <script src="js/respond.min.js"></script><!-- RESPOND JS  -->

    <script>
        if (!document.getElementsByClassName) {
            document.getElementsByClassName = function (className, element) {
                var children = (element || document).getElementsByTagName('*');
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
        var bs =document.getElementsByTagName("b");

        $(document).ready(function() {
            button.onclick = function () {
                document.getElementById("xianshi").style.display = "block";
                document.getElementById("xianshi2").style.display = "block";
                $(".xianshia").show();
                var p1 = document.getElementById("p1").value / 100;
                var j1 = document.getElementById("txt").value / 100;

                var sums = new Array();
                for (var i = 0; i < pings.length; i++) {
                    sums[i] = parseFloat(pings[i].value) * p1 + parseFloat(juans[i].value) * j1;
//            $("h5").text("添加的内容");
                    h5s[i].innerHTML = sums[i];
                    //console.log(sums[i]);
//                    console.log(p1);
//                    console.log(j1);
                }
                var you=0;
                var liang =0;
                var zhong=0;
                var jige =0;
                var notjige=0;
                var avg=0;
                var he=0;

                for (var j = 0; j < sums.length; j++) {
                    he+=parseFloat(sums[j]);
                    if (parseFloat(sums[j]) < 60) {
                        notjige++;
                    } else if (parseFloat(sums[j]) >= 90) {
                        you++;
                    } else if (parseFloat(sums[j]) >= 80 & parseFloat(sums[j]) < 90) {
                        liang++;
                    } else if (parseFloat(sums[j]) >= 70 & parseFloat(sums[j]) < 80) {
                        zhong++;
                    } else {
                        jige++;
                    }
                }
                var you1=100*you/pings.length;
                var  liang1=100*liang/pings.length;
                var zhong1 =100*zhong/pings.length;
                var jige1=100*jige/pings.length;
                var notjige1=100*notjige/pings.length;
//                console.log(you);
//                console.log(liang);
//                console.log(notjige);
//                console.log(you1);
//                var account=new Array([you,liang,zhong,jige,notjige,you1,liang1,zhong1,jige1,notjige1]);
                document.getElementById("pjcj").value=he/pings.length;
//                for(var x=0;x<10;x++){
//                    bs[x].innerHTML = sums[x];
//                    console.log(account[x]);
//                }
                document.getElementById("you").value=you;
                document.getElementById("liang").value=liang;
                document.getElementById("zhong").value=zhong;
                document.getElementById("jige").value=jige;
                document.getElementById("notjige").value=notjige;
                document.getElementById("you1").value=you1;
                document.getElementById("liang1").value=liang1;
                document.getElementById("zhong1").value=zhong1;
                document.getElementById("jige1").value=jige1;
                document.getElementById("notjige1").value=notjige1;

            }
        });

    </script>

</section>
</body>
</html>
