<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container col-lg-3">
		<div class="row">
			<div class="mt-4 mb-4 text-center">
				<h1>Here's Your Omikuji!</h1>
			</div>
		</div>
		<div class="row border border-dark bg-info">
			<div class="p-4 text-start">
				<h3>In <c:out value="${numberSelect}"></c:out> years, you will live in <c:out value="${cityName}"></c:out> with <c:out value="${personName}"></c:out> as your roommate, <c:out value="${professionOrHobby}"></c:out> for a living. The next time you see a(n) <c:out value="${livingThing}"></c:out>, you will have good luck. Also, <c:out value="${somethingNice}"></c:out>.</h3>
			</div>
		</div>
		<div class="row mt-4 text-center">
			<a href="/omikuji/">Go Back</a>
		</div>
	</div>
</body>
</html>