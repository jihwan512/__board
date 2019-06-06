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

  <title>게시글 수정</title>

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
<a id="logo" href="main.jsp"><img src="./img/cbnu.jpg" height="40px" width="40px"/>충북대학교 학적 게시판</a>
  <!-- main wrapper -->
  <div class="menubar">
	<ul>
 		<li id="first"><a href="#">학점관리</a>
			<ul>
     			<li><a href="#">학적등록</a></li>
    			<li><a href="#">학적확인</a></li>
		    </ul>
		</li>
 		<li id="second"><a href="#" id="current">공학인증</a>
			<ul>
     			<li><a href="#">공학인증 과목</a></li>
    			<li><a href="#">남은 공학인증 과목</a></li>
			    <li><a href="#">남은 공학인증 학점</a></li>
		    </ul>
	   </li>
 	   <li id="third"><a href="#">포트폴리오</a>
			<ul>
     			<li><a href="#">포트폴리오 등록</a></li>
    			<li><a href="#">포트폴리오 출력</a></li>
			    <li><a href="#">내 포트폴리오</a></li>
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
        <a href="#" class="list-group-item list-group-item-action bg-bugundy">회원정보 수정</a>
        <a href="#" class="list-group-item list-group-item-action bg-bugundy">회원탈퇴</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle" style="margin-right:10px;">Menu</button> 
             	사용자ID : ${id}
      </nav>

      <div class="container-fluid">
<!--         		<div style="text-align:right"> -->
<%-- 	사용자ID : ${id} <input type=button class="btn btn-info" value="로그아웃" OnClick="window.location='logout.do'" style="margin-left:100"> --%>
<!-- 	</div> -->
	<form id="inform" action ="/board/coverlettermodify.do" method="post" onsubmit="return writeCheck();">
		<c:forEach items="${articleList}" var="article">
			<input type="hidden" name="num" value="${article.num}">
			<table class="table table-striped table-bordered table-hover" style="text-align:center;">
				<caption style="text-align:center; caption-side: top;">자기소개서 수정</caption>		
				<tr>
					<td>제목</td>
					<td style="text-align:left"><input type="text" name="subject" value="${article.subject}" style="width: 1150"></td>
				</tr>
				<tr>	
					<td>작성자</td>
					<td style="text-align:left">${article.id}</td>
				</tr>
				<tr>	
					<td>작성일자</td>
					<td style="text-align:left">${article.boarddate}</td>
				</tr>
				<tr>	
					<td>email</td>
					<td style="text-align:left">${article.email}</td>
				</tr>
				<tr>	
					<td>내용</td>
					<td style="text-align:left"><textarea name="content" rows="10" cols="130" placeholder="내용을 입력하세요" form="inform">${article.content}</textarea></td>
				</tr>	
				<tr>
					<td></td>
					<td style="text-align:right">
						<input type=submit class="btn btn-warning" value="수정" Onclick="javascript:writeCheck();">
						<input type=button class="btn btn-secondary" value="취소" OnClick="window.location='coverlettercontent.do?num=${article.num}'">
					</td>
				</tr>	
			</table>
		</c:forEach>
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
