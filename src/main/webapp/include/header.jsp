<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">

    <title><%= request.getAttribute("title") %></title>

    
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css">

    
    <script src="assets/js/modernizr.js"></script>
  </head>

  <body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html">SOLID.</a>
        </div>
        <div class="navbar-collapse collapse navbar-right">
          <ul class="nav navbar-nav">
            <li ><a href="<%= request.getContextPath()%>/home?page=home">HOME</a></li>
            <li><a href="<%= request.getContextPath()%>/usercontroller?page=listusers">List Users</a></li>
            <li><a href="<%= request.getContextPath()%>/usercontroller?page=adduser">Add user</a></li>
<!--             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="blog.html">BLOG</a></li>
                <li><a href="single-post.html">SINGLE POST</a></li>
                <li><a href="portfolio.html">PORTFOLIO</a></li>
                <li><a href="single-project.html">SINGLE PROJECT</a></li>
              </ul>
            </li> 
-->
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- *****************************************************************************************************************
	 HEADERWRAP
	 ***************************************************************************************************************** -->
	<div id="headerwrap">
	    <div class="container">
			<div class="row">