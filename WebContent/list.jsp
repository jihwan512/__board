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

  <title>list</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
<!-- cycle -->
	<script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>
	<script>
		$(document).ready(function(){
		$('.cycle').cycle({ 
		    fx:     'scrollLeft', 
		    timeout: 5000
		 });
		});
	</script>
<!-- cycle -->
</head>

<body>	
  <a id="logo" href="main.jsp"><img src="./img/cbnu.jpg" height="40px" width="40px"/>충북대학교 학적 게시판</a>
  <!-- main wrapper -->
  <div class="menubar">
	<ul>
 		<li id="first"><a href="#">학점관리</a>
 		<ul>
 			<li><a href="/board/abeekform.do">학점관리</a></li>
		</ul>
		</li>
 	   <li id="third"><a href="#">포트폴리오</a>
			<ul>
     			<li><a href="/board/modifyform2.do">포트폴리오 등록</a></li>
			    <li><a href="/board/content2.do">내 포트폴리오</a></li>
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
      <div class="container-fluid" >
<!--         	<div style="text-align:right"> -->
<%-- 				사용자ID : ${id}  --%>
<!-- 			</div> -->
			<table class="table table-striped table-bordered table-hover">
				<tr>
					<th style="text-align:center">번호</th>
					<th style="text-align:center">제목</th>
					<th style="text-align:center">작성자</th>
					<th style="text-align:center">작성일자</th>
					<th style="text-align:center">조회수</th>
				</tr>
					
					<c:forEach items="${articleList}" var="article">
				<tr>
					<th style="text-align:center">${article.num}</th>
					<th style="text-align:left"><a href="content.do?num=${article.num}" OnClick="location.href='comments.do?num=${article.num}'">${article.subject} [${article.commCount}]</a></th>
					<th style="text-align:center">${article.id}</th>
					<th style="text-align:center">${article.boarddate}</th>
					<th style="text-align:center">${article.score}</th>			
				</tr>
				</c:forEach>
			</table>		
				
				<div style="text-align:center;">
				<c:if test="${count > 0}">
   					<c:set var="pageCount" value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}"/>
   					<c:set var="startPage" value="${pageGroupSize*(numPageGroup-1)+1}"/>
   					<c:set var="endPage" value="${startPage + pageGroupSize-1}"/>
   
   				<c:if test="${endPage > pageCount}" >
     				<c:set var="endPage" value="${pageCount}" />
   				</c:if>
          
   				<c:if test="${numPageGroup > 1}">
        			<a href="./list.do?pageNum=${(numPageGroup-2)*pageGroupSize+1 }">[이전]</a>
   				</c:if>

   				<c:forEach var="i" begin="${startPage}" end="${endPage}">
       				<a href="list.do?pageNum=${i}">[
        			<font color="#000000">
          				<c:if test="${currentPage == i}">
          					<b>${i}</b>
        				</c:if>
        				<c:if test="${currentPage != i}">
          					${i}
        				</c:if>
       				</font>]
       				</a>
   				</c:forEach>

   				<c:if test="${numPageGroup < pageGroupCount}">
        			<a href="./list.do?pageNum=${numPageGroup*pageGroupSize+1}">[다음]</a>
   				</c:if>
				</c:if>		
				</div>
				
					<div style="text-align:right">
						<input type=button class="btn btn-success" value="작성하기" OnClick="window.location='writeform.jsp'">
					</div>
					<div id="searchForm" style="text-align:center">
					
						<form action="/board/list.do?" method="post">
							<select name="opt">
								<option value="0">제목</option>
								<option value="1">내용</option>
								<option value="2">작성자</option>
							</select>
							<input type="text" size="20" name="condition"/>
							<input class="btn btn-secondary" type="submit" value="검색"/>
						</form>
					</div>
					
     		 </div>
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
        <!-- cycle -->
     <div class="cycleborder">
	<div class="cycle" style="text-align:center">
		<div class="cyclediv" style="background:black;"><a href="https://cbnu.blackboard.com/" target="_blank"><img class="topimg" src="img/ecampus.png"/></a></div>
		<div class="cyclediv"><a href="https://eis.cbnu.ac.kr/" target="_blank"><img class="topimg" src="img/gaesin.png"/></a></div>
		<div class="cyclediv"><a href="https://software.cbnu.ac.kr/" target="_blank"><img class="topimg" src="img/software.png"/></a></div>
	</div>
	</div>
	<!-- cycle -->
<!-- Footer -->
	<section id="footer">
		<div class="container">
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
					<ul class="list-unstyled list-inline social text-center">
						<li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li class="list-inline-item"><a href="#" target="_blank"><i class="fa fa-envelope"></i></a></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
					<p>National Transaction Corporation is a Registered MSP/ISO of Elavon, Inc. Georgia<br />
					&copy All right Reversed.Sunlimetech</p>
				</div>
			</div>	
	</section>
	<!-- ./Footer -->
</body>

</html>
