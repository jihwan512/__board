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

</head>

<body>
  <img src = ""/>
  <div class="bg-bugundy border-right" id="mainbar-wrapper">
    <div class="list-group list-group-horizontal">
      <a href="#" class="list-group-item list-group-item-action bg-bugundy">학점관리</a>
      <a href="#" class="list-group-item list-group-item-action bg-bugundy">공학인증</a>
      <a href="#" class="list-group-item list-group-item-action bg-bugundy">포트폴리오</a>
      <a href="#" class="list-group-item list-group-item-action bg-bugundy">자기소개서</a>
      <a href="#" class="list-group-item list-group-item-action bg-bugundy">자유게시판</a>
    </div>
  </div>
  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-bugundy border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">학점관리</div>
      <div class="list-group list-group-flush">
        <a href="#" class="list-group-item list-group-item-action bg-bugundy">학점 등록</a>
        <a href="#" class="list-group-item list-group-item-action bg-bugundy">평점 조회</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle">Menu</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item">
              사용자ID : ${id}<input type=button class="btn btn-info" value="로그아웃" OnClick="window.location='logout.do'" style="margin-left:100">
            </li>
          </ul>
        </div>
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
					<th style="text-align:left"><a href="content.do?num=${article.num}" OnClick="location.href='comments.do?num=${article.num}'">${article.subject}</a></th>
					<th style="text-align:center">${article.id}</th>
					<th style="text-align:center">${article.boarddate}</th>
					<th style="text-align:center">${article.score}</th>			
				</tr>
				</c:forEach>
				</table>		
				
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
					<div style="text-align:right">
						<input type=button class="btn btn-success" value="작성하기" OnClick="window.location='writeform.jsp'">
					</div>
					<div id="searchForm" style="text-align:center">
					
						<form action="/board/list.do" method="get">
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

</body>

</html>
