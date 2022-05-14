<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vinyl Collection</title>
<jsp:include page="bootstrapHead.jsp" />
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
	<h1>VinylDB</h1>
	<hr>
	<div>
		<h2>Search</h2>
		<form action="getAlbum.do" method="GET">
			by ID: <input type="text" name="aid" /> <input type="submit"
				value=" > " />
		</form>
		<br>
		<form action="searchTitles.do" method="GET">
			by title: <input type="text" name="aid" /> <input type="submit"
				value=" > " />
		</form>
	</div>

	<hr>
	<div>
		<h2>
			<a href="showAll.do">View All Albums</a>
		</h2>
		<br>
		<h2>
			<a href="addAlbum.do">Add Album</a>
		</h2>
	</div>


</body>
<jsp:include page="bootstrapFoot.jsp" />
</html>