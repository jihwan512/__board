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

  <title>main</title>

  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">

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
    <div id="page-content-wrapper" >

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
      <div style="text-align:center;">
      	<img src="./img/cbnu.jpg" alt="cbnu.png" >
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
