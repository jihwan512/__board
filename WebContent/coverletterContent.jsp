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

  <title>list</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  
  <script> 
		
		function writeCheck()
		  {
		   var form = document.getElementById("inform");
		   
		  	if( !form.comment.value )
		   	{
		    	alert( "내용을 적어주세요" );
		    	form.comment.focus();
		    	return false;
		   	}
		  	else{
		  		return true;
		  	}
		  }
		function commentDelete(comment,num){
			alert(comment);
			alert(num);
			location.href="commentsdelete.do?comments="+encodeURI(encodeURIComponent(comment))+"&num="+num;
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
	<c:forEach items="${articleList}" var="article">
	<table class="table table-striped table-bordered table-hover" style="text-align:center" >
		<caption style="text-align:center"></caption>
		
		<tr>
			<td style="text-align:center">제목</td>
			<td style="text-align:center" colspan="3">${article.subject}</td>			
		</tr>
		<tr>
			<td>작성자</td>
			<td style="text-align:left">${article.id}</td>
			<td>email</td>
			<td style="text-align:left">${article.email}</td>						
		</tr>
		<tr>
			<td>작성일자</td>
			<td style="text-align:left">${article.boarddate}</td>	
			<td>조회수</td>
			<td style="text-align:left">${article.score}</td>						
		</tr>		
		<tr>
			<td>내용</td>
			<td style="text-align:left" colspan="3" height="100px">${article.content}</td>						
		</tr>
		
	</table>
	<div style="text-align:right">
		<c:if test="${article.id eq id}">
			<input type=button class="btn btn-danger" value="삭제하기" OnClick="window.location='coverletterdelete.do?num=${article.num}'">
			<input type=button class="btn btn-warning" value="수정하기" OnClick="window.location='coverlettermodifyform.do?num=${article.num}'">	
		</c:if>		
		<input type=button class="btn btn-secondary" value="돌아가기" OnClick="window.location='coverletterlist.do'">
	</div>
	</c:forEach>		
	<br><br>
	
	<table class="table table-striped table-bordered table-hover" style="text-align:center">
	<caption style="text-align:left"> <br><br> 댓글 작성</caption>
		<tr>
			<td width="250px">아이디 (이메일)</td>
			<td width="120px">작성일자</td>
			<td>댓글 내용</td>
		</tr>
		<c:forEach items="${commentsList}" var="comments">
		
		<tr>
			<td>${comments.id} (${comments.email})</td>
			<td>${comments.date}</td>
			<td style="text-align-last:justify;">${comments.comment}
			<c:if test="${comments.id eq id}">
				<%int num=Integer.parseInt(request.getParameter("num")); %>
				<input type=button class="btn btn-danger" value="삭제하기" OnClick="window.location='coverlettercommentsdelete.do?num=${comments.num}&boardnum=<%=num%>'" >
			</c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
	
	<c:forEach items="${articleList}" var="article">
	<form id="inform" action="/board/covercommentsWrite.do?num=${article.num}" method="post" style="margin-bottom:10;" onsubmit="return writeCheck();">
		<table class="table table-striped table-bordered table-hover" style="text-align:left; ">
			<tr>
				<td width="250px">${id} (${email})</td>
				<td><input type="text" name="comment" placeholder="내용을 입력하세요" size="100"></td>
				<td><input type=submit class="btn btn-success" value="등록" Onclick="javascript:writeCheck();"></td>
			</tr>	
		</table>
	</form>
	</c:forEach>
     		 </div>
	  		</div>

    <!-- /#page-content-wrapper -->

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
