<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta name="description" content="">
  <meta name="author" content="">

  <title>게시글 작성</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  
<script> 
function writeCheck()
{
 var form = document.getElementById("inform");
 
if( !form.subject.value )
 {
  	alert( "제목을 적어주세요" );
  	form.subject.focus();
  	return false;
 }
else if( !form.content.value )
 {
  	alert( "내용을 적어주세요" );
  	form.content.focus();
  	return false;
 } 
else {
	  return true;
}
}
 	</script>
</head>

<body>
<div style="text-align:right">
  	<a href="main.jsp" style="margin-right:10px">main</a>
  </div>	
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
      <div class="sidebar-heading">자유게시판</div>
      <div class="list-group list-group-flush">
        <a href="/board/list.do" class="list-group-item list-group-item-action bg-bugundy">자유게시판</a>
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

      <div class="container-fluid">
<!--         		<div style="text-align:right"> -->
<%-- 	사용자ID : ${id} <input type=button class="btn btn-info" value="로그아웃" OnClick="window.location='logout.do'" style="margin-left:100"> --%>
<!-- 	</div> -->
	<form id="inform" action ="/board/write.do" method="post" onsubmit="return writeCheck();">
		<table class="table table-striped table-bordered table-hover" style="text-align:center;">
			<caption style="text-align:center; caption-side: top;">게시글 작성</caption>
			<tr >
				<th>제목</th>
				<th style="text-align:left" colspan="3"><input type="text" name="subject" placeholder="제목을 입력하세요" style="width: 1150"></th>
			</tr>
			<tr>
				<th>작성자</th>
				<th style="text-align:left; width:300px;">${id}</th>
				<th>email</th>
				<th style="text-align:left">${email}</th>
			</tr>
			<tr>	
				<th>내용</th>
				<th style="text-align:left" colspan="3"><textarea name="content" rows="10" cols="130" placeholder="내용을 입력하세요" form="inform"></textarea></th>
			</tr>	
			<tr>
	
				<th style="text-align:center" colspan="4">		
					<input type=submit class="btn btn-success" value="등록" Onclick="javascript:writeCheck();">
					<input type=button class="btn btn-secondary" value="취소" OnClick="window.location='list.do'">
				</th>
			</tr>
		</table>
	</form>

    <!-- /#page-content-wrapper -->
    </div>
</div>
  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor1/jquery/jquery.min.js"></script>
  <script src="vendor1/bootstrap/js/bootstrap.bundle.min.js"></script>

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
