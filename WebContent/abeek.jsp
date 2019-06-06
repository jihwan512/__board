<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
   <head>
      <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta name="description" content="">
        <meta name="author" content="">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/simple-sidebar.css" rel="stylesheet">
   </head>

<body>   
<script>
$(document).ready(function(){
  $('.toast').toast('show');
});
</script>

    <a id="logo" href="main.jsp"><img src="./img/cbnu.jpg" height="40px" width="40px"/>충북대학교 학적 게시판</a>
  <!-- main wrapper -->
  <div class="menubar">
	<ul>
 		<li id="first"><a href="#">학점관리</a>
 		<ul>
 			<li><a href="/board/abeek.do">학점관리</a></li>
		</ul>
		</li>
 	   <li id="third"><a href="#">포트폴리오</a>
			<ul>
     			<li><a href="/board/list2.jsp">포트폴리오 등록</a></li>
			    <li><a href="/board/portfolio.do">내 포트폴리오</a></li>
		    </ul>
	   </li>
 	   <li id="fourth"><a href="#">자기소개서</a>
			<ul>
     			<li><a href="/board/coverletterWriteform.jsp">자기소개서 등록</a></li>
    			<li><a href="/board/coverletterlist.do">자기소개서 게시판목록</a></li>
		    </ul>
	   </li>
 	   <li id="fifth"><a href="#">자유게시판</a>
			<ul>
     			<li><a href="/board/list.do">게시판</a></li>
		    </ul>
	   </li>
	</ul>
  </div>
  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-bugundy border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">개인 메뉴</div>
      <div class="list-group list-group-flush">
        <a href="/board/logout.do" class="list-group-item list-group-item-action bg-bugundy">로그아웃</a>
        <a href="/board/infomodifyform.do" class="list-group-item list-group-item-action bg-bugundy">회원정보 수정</a>
        <a href="/board/retireconfirm.jsp" class="list-group-item list-group-item-action bg-bugundy">회원탈퇴</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle" style="margin-right:10px;">Menu</button> 
             	사용자ID : ${id}
      </nav>


      <!-- ******************************************* authenticate.jsp의 content ******************************************* -->
      <div class="container">
         <h3 style="margin: 30px;text-align: center">21년 졸업생 기준 교양과목 영역별 이수학점</h3>

         <table class="table table-bordered">
            <tr>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">전공 <br>(학과/학부)</th>
               <th colspan="6" class="align-middle" style="background-color: #932c47; color: white;text-align:center">기초교양</th>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">심화<br>교양</th>
              <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">특성<br>교양</th>
              <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">교양최저 이수기준 학점</th>
             <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">교양과목 이수상한 학점</th>
          </tr>
            <tr>
               <th colspan="4" class="align-middle" style="background-color: #932c47; color: white;text-align:center">공통기초</th>
               <th colspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">자연이공계 기초</th>
            </tr>
            <tr>
               <th style="background-color: #932c47; color: white;text-align:center">국어와<br>작문</th>
               <th style="background-color: #932c47; color: white;text-align:center">글쓰기와<br>소통</th>
               <th style="background-color: #932c47; color: white;text-align:center">컴퓨터<br>활용</th>
               <th style="background-color: #932c47; color: white;text-align:center">외국어/<br>한국어</th>
               <th style="background-color: #932c47; color: white;text-align:center">수학</th>
               <th style="background-color: #932c47; color: white;text-align:center">자연과학</th>
            </tr>
            <tr>
               <th style="text-align:center">소프트웨어학과</th>
               <th style="text-align:center">3</th>
               <th style="text-align:center">3</th>
               <th style="text-align:center">0</th>
               <th style="text-align:center">6</th>
               <th style="text-align:center" colspan="2">19</th>
               <th style="text-align:center">12</th>
               <th style="text-align:center">3</th>
               <th style="text-align:center">46</th>
               <th style="text-align:center">57</th>
            </tr>
         </table>
      </div>
         
      <div class="container">
         <h3 style="margin: 30px;text-align: center">21년 졸업생 기준 전공 이수학점</h3>
         
         <table class="table table-bordered">
            <tr>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">대학</th>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">전공 (학과/학부)</th>
               <th colspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">교양과정</th>
               <th colspan="5" class="align-middle" style="background-color: #932c47; color: white;text-align:center">전공과정</th>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">일반선택</th>
               <th rowspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">졸업학점</th>
            </tr>
            <tr>
               <th rowspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">필수</th>
               <th rowspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">선택</th>
               <th colspan="3" class="align-middle" style="background-color: #932c47; color: white;text-align:center">최소전공인정학점</th>
               <th rowspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">선택(심화)</th>
               <th rowspan="2" class="align-middle" style="background-color: #932c47; color: white;text-align:center">계</th>
            </tr>
            <tr>
               <th style="background-color: #932c47; color: white;text-align:center">필수</th>
               <th style="background-color: #932c47; color: white;text-align:center">선택</th>
               <th style="background-color: #932c47; color: white;text-align:center">소계</th>
            </tr>
            <tr>
               <th style="text-align:center">전자정보대학</th>
               <th style="text-align:center">소프트웨어학과</th>
               <th style="text-align:center">3</th>
               <th style="text-align:center">43</th>
               <th style="text-align:center">46</th>
               <th style="text-align:center">36</th>
               <th style="text-align:center">72</th>
               <th style="text-align:center">21</th>
               <th style="text-align:center">93</th>
               <th style="text-align:center">0이상</th>
               <th style="text-align:center">150</th>
            </tr>
         </table>
      </div>
      
      <form action="abeek.do" method="POST">
      <div id="t1" class="container text-center" style="margin-top: 100px;">
         <h3 style="margin-bottom: 20px;">공학인증 교육 학점 관리</h3>
         <table class="table table-striped table-bordered table-hover">
            <tr>
               <th style="background-color: #932c47; color: white;text-align:center">학년</th>
            <th style="background-color: #932c47; color: white;text-align:center">학기</th>
            <th style="background-color: #932c47; color: white;text-align:center">분류</th>
            <th style="background-color: #932c47; color: white;text-align:center">강좌</th>
            <th style="background-color: #932c47; color: white;text-align:center">학점</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(0);"><input type="hidden" id="0" name="0" value="0">이산수학</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(1);"><input type="hidden" id="1" name="1" value="0">창의공학설계</th>
            <th class="credit" style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(2);"><input type="hidden" id="2" name="2" value="0">미래설계탐색1</th>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(3);"><input type="hidden" id="3" name="3" value="0">컴퓨터시스템개론</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(4);"><input type="hidden" id="4" name="4" value="0">소프트웨어도구 실험</th>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">1학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(5);"><input type="hidden" id="5" name="5" value="0">미래설계탐색2</th>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(6);"><input type="hidden" id="6" name="6" value="0">논리회로 및 실험</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(7);"><input type="hidden" id="7" name="7" value="0">자료구조</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(8);"><input type="hidden" id="8" name="8" value="0">객체지향 프로그래밍</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(9);"><input type="hidden" id="9" name="9" value="0">선형대수학</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(10);"><input type="hidden" id="10" name="10" value="0">오토마타</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(11);"><input type="hidden" id="11" name="11" value="0">미래설계준비1</th>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(12);"><input type="hidden" id="12" name="12" value="0">기초프로젝트</th>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(13);"><input type="hidden" id="13" name="13" value="0">컴퓨터구조</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(14);"><input type="hidden" id="14" name="14" value="0">프로그래밍언어론</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(15);"><input type="hidden" id="15" name="15" value="0">알고리즘</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(16);"><input type="hidden" id="16" name="16" value="0">시스템프로그래밍</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(17);"><input type="hidden" id="17" name="17" value="0">인간컴퓨터상호작용 프로그래밍</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(18);"><input type="hidden" id="18" name="18" value="0">미래설계준비2</th>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">2학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(19);"><input type="hidden" id="19" name="19" value="0">개발프로젝트</th>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(20);"><input type="hidden" id="20" name="20" value="0">운영체제</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(21);"><input type="hidden" id="21" name="21" value="0">객체지향 설계</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(22);"><input type="hidden" id="22" name="22" value="0">웹기반소프트웨어 개발</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(23);"><input type="hidden" id="23" name="23" value="0">컴파일러</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(24);"><input type="hidden" id="24" name="24" value="0">컴퓨터네트워크</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(25);"><input type="hidden" id="25" name="25" value="0">미래설계구현1</th>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(26);"><input type="hidden" id="26" name="26" value="0">전문프로젝트 <span class="badge badge-danger">강추!</span></th>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(27);"><input type="hidden" id="27" name="27" value="0">소프트웨어공학</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(28);"><input type="hidden" id="28" name="28" value="0">산학프로젝트</th>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(29);"><input type="hidden" id="29" name="29" value="0">확률및 통계</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(30);"><input type="hidden" id="30" name="30" value="0">펌웨어프로그래밍</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(31);"><input type="hidden" id="31" name="31" value="0">데이터통신</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(32);"><input type="hidden" id="32" name="32" value="0">데이터베이스시스템</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(33);"><input type="hidden" id="33" name="33" value="0">컴퓨터그래픽스</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">3학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(34);"><input type="hidden" id="34" name="34" value="0">미래설계구현2</th>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(35);"><input type="hidden" id="35" name="35" value="0">캡스톤디자인1</th>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(36);"><input type="hidden" id="36" name="36" value="0">임베디드시스템</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(37);"><input type="hidden" id="37" name="37" value="0" >영상처리</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(38);"><input type="hidden" id="38" name="38" value="0" >인공지능</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(39);"><input type="hidden" id="39" name="39" value="0" >산학초청세미나1</th>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(40);"><input type="hidden" id="40" name="40" value="0" >컴퓨터교재연구 및 지도법</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(41);"><input type="hidden" id="41" name="41" value="0" >데이터베이스설계</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(42);"><input type="hidden" id="42" name="42" value="0" >캡스톤디자인2</th>
            <th class="credit"    style="text-align:center">2</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(43);"><input type="hidden" id="43" name="43" value="0" >그래프이론</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(44);"><input type="hidden" id="44" name="44" value="0" >정보보호</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(45);"><input type="hidden" id="45" name="45" value="0" >정보검색</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(46);"><input type="hidden" id="46" name="46" value="0" >산학초청세미나2</th>
            <th class="credit"    style="text-align:center">1</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(47);"><input type="hidden" id="47" name="47" value="0" >컴퓨터논리 및 논술</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(48);"><input type="hidden" id="48" name="48" value="0" >컴퓨터교육론</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(49);"><input type="hidden" id="49" name="49" value="0" >빅데이터처리</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(50);"><input type="hidden" id="50" name="50" value="0" >실험실 프로젝트</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">4학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">전선</th>
            <th class="subject" style="text-align:center" onclick="select_subject(51);"><input type="hidden" id="51" name="51" value="0" >정보콘텐츠 SW 프로젝트</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th colspan="5" style="text-align:center"><hr></th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(52);"><input type="hidden" id="52" name="52" value="0" >Action English</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(53);"><input type="hidden" id="53" name="53" value="0" >발표와 토론의 실제</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(54);"><input type="hidden" id="54" name="54" value="0" >수학1</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(55);"><input type="hidden" id="55" name="55" value="0" >수학2</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(56);"><input type="hidden" id="56" name="56" value="0" >기초컴퓨터프로그래밍</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(57);"><input type="hidden" id="57" name="57" value="0" >응용컴퓨터프로그래밍</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(58);"><input type="hidden" id="58" name="58" value="0" >기초통계학및실습</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(59);"><input type="hidden" id="59" name="59" value="0" >맛보기물리학및실험</th>
            <th class="credit"    style="text-align:center">4</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(60);"><input type="hidden" id="60" name="60" value="0" >영어읽기와 토론</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(61);"><input type="hidden" id="61" name="61" value="0" >공업경영과 경제</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">2학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(62);"><input type="hidden" id="62" name="62" value="0" >공학윤리와 역사</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(63);"><input type="hidden" id="63" name="63" value="0" >언어로의 초대</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(64);"><input type="hidden" id="64" name="64" value="0" >동양문학사</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
         <tr>
            <th style="text-align:center">전학년</th>
            <th style="text-align:center">1학기</th>
            <th style="text-align:center">교필</th>
            <th class="subject" style="text-align:center" onclick="select_subject(65);"><input type="hidden" id="65" name="65" value="0" >지역사회문화 영역에서 택1</th>
            <th class="credit"    style="text-align:center">3</th>
         </tr>
      </table>
   </div>
      <div class="container-fluid" style="background-color: #f2f2f2;position: fixed; bottom: 0px;">
            <div class="progress" style="margin: 30px;">
                  <div id="t2" class="progress-bar bg-success progress-bar-striped progress-bar-animated" style="width: 0%"></div>
              </div>
              <table class="table table-bordered table-hover">
            <tr>
               <th class="align-middle" style="background-color: #932c47; color: white;text-align:center; width: 18%">총 학점</th>
               <th class="align-middle" style="background-color: white;text-align:center; width: 9%">150</th>
               <th class="align-middle" style="background-color: #932c47; color: white;text-align:center; width: 18%">이수 학점</th>
               <th class="align-middle" style="background-color: white;text-align:center; width: 9%" id="AA">0</th>
               <th class="align-middle" style="background-color: #932c47; color: white;text-align:center; width: 18%">잔여 학점</th>
               <th class="align-middle" style="background-color: white; text-align:center; width: 9%" id="BB">150</th>
               <th style="text-align:center; width: 19%">
                  <div class="btn-group">
                     <button type="submit" class="btn btn-success btn-lg" onclick="print1()")>저장하기</button>
                     <button type="button" class="btn btn-outline-success btn-lg" onclick="act1();">다시하기</button>
                  </div>
               </th>
            </tr>
         </table>
           </div>
           <div style="height: 150px;"></div>
            </form>
            <script>
            var temp1 = document.getElementsByClassName("subject");
            var temp2 = new Array();
            var temp3 = document.getElementsByClassName("credit");
            var temp4 = new Array();
            var id1 = document.getElementById("AA");
            var id2 = document.getElementById("BB");
            var sum1 = 0;
            var sum2 = 0;
            var bar = document.getElementById("t2");
            for(var i=0;i<temp1.length;i++){
               temp2[i] = temp1[i].innerHTML;
            }
            for(var i=0;i<temp3.length;i++){
               temp4[i] = parseInt(temp3[i].innerHTML, 10);
            }
            sum2 = 150;
            
            function select_subject(num) {
               
               var _id = document.getElementById(num);
               if(_id.value == 0){
                  _id.value = 1;
                  temp1[num].style.backgroundColor = "#9fdf9f";
                  temp1[num].style.color = "white";
                  
                  sum1 += temp4[num];
                  sum2 -= temp4[num];
                  
                  bar.style.width = (sum1/150) * 100 +"%";
               }
               else if(_id.value == 1){
                  _id.value = 0;
                  temp1[num].style.background = "none";
                  temp1[num].style.color = "black";
                  
                  sum1 -= temp4[num];
                  sum2 += temp4[num];
                  
                  bar.style.width = (sum1/150) * 100 +"%";
               }
               id1.innerHTML = sum1;
               id2.innerHTML = sum2;
               if(sum2 < 0) sum2 = 0;
            }
            function print1() {
               alert("이수학점 : "+ sum1 + '\n' +"남은학점 : " + sum2);
               $('html, body').stop().animate( { scrollTop : '1100' } );
            }
            function act1() {
               window.location.reload();
               location.href='#t1';
            }
         </script>
     </div>

    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="jquery/jquery.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
  $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
    $( document ).ready( function() {
        $( "#wrapper" ).toggleClass( "toggled" );
    } );
  </script>

</body>
</html>