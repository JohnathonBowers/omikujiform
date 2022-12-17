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
				<h1>Send an Omikuji!</h1>
			</div>
		</div>
		<div class="row border border-dark justify-content-center">
			<form action="/omikuji/create" method="post" class="p-4 justify-content-start">
				<div>
					<label for="numberSelect" class="form-label mt-2 mb-2">Pick any number from 5 to 25.</label>
					<input type="number" name="numberSelect" class="form-control mb-2" min="5" max="25"/>
				</div>
				<div>
					<label for="cityName" class="form-label mt-2 mb-2">Enter the name of any city.</label>
					<input type="text" name="cityName" class="form-control mb-2"/>
				</div>
				<div>
					<label for="personName" class="form-label mt-2 mb-2">Enter the name of any real person.</label>
					<input type="text" name="personName" class="form-control mb-2"/>
				</div>
				<div>
					<label for="professionOrHobby" class="form-label mt-2 mb-2">Enter professional endeavor or hobby.</label>
					<input type="text" name="professionOrHobby" class="form-control mb-2"/>
				</div>
				<div>
					<label for="livingThing" class="form-label mt-2 mb-2">Enter any type of living thing.</label>
					<input type="text" name="livingThing" class="form-control mb-2"/>
				</div>
				<div>
					<label for="somethingNice" class="form-label mt-2 mb-2">Say something nice to someone.</label>
					<textarea name="somethingNice" class="form-control mb-2" rows="3"></textarea>
				</div>
				<div class="mt-4">
					<p><em>Send and show a friend.</em></p>
				</div>
				<div class="d-flex justify-content-end">
					<button class="btn btn-primary mt-2" type="submit">Send</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>