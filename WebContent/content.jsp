<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 </script>
 <html>
<head>
<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<div style="text-align:right">
	사용자ID : ${id} <input type=button class="btn btn-info" value="로그아웃" OnClick="window.location='logout.do'" style="margin-left:100">
	</div>
	<c:forEach items="${articleList}" var="article">
	<table class="table table-striped table-bordered table-hover" style="text-align:center" >
		<caption style="text-align:center"></caption>
		
		<tr>
			<td style="text-align:center" colspan="4">${article.subject}</td>			
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
		<input type=button class="btn btn-danger" value="삭제하기" OnClick="window.location='delete.do?num=${article.num}'">
		<input type=button class="btn btn-warning" value="수정하기" OnClick="window.location='modifyform.do?num=${article.num}'">			
		<input type=button class="btn btn-secondary" value="돌아가기" OnClick="window.location='list.do'">
	</div>
	</c:forEach>		
	<br><br>
	
	<table class="table table-striped table-bordered table-hover" style="text-align:center">
	<caption style="text-align:left">  댓글</caption>
		<tr>
			<td width="250px">아이디 (이메일)</td>
			<td width="120px">작성일자</td>
			<td>댓글 내용</td>
		</tr>
		<c:forEach items="${commentsList}" var="comments">
		<tr>
			<td>${comments.id} (${comments.email})</td>
			<td>${comments.date}</td>
			<td>${comments.comment}</td>
		</tr>
		</c:forEach>
	</table>
	
	<c:forEach items="${articleList}" var="article">
	<form id="inform" action="/board/commentsWrite.do?num=${article.num}" method="post" style="margin-bottom:10;" onsubmit="return writeCheck();">
		<table class="table table-striped table-bordered table-hover" style="text-align:left; ">
			<caption style="text-align:center">  댓글 작성</caption>
			<tr>
				<td width="250px">${id} (${email})</td>
				<td><input type="text" name="comment" placeholder="내용을 입력하세요" size="120"></td>
				<td><input type=submit class="btn btn-success" value="등록" Onclick="javascript:writeCheck();"></td>
			</tr>	
		</table>
	</form>
	</c:forEach>
</body>
</html>
