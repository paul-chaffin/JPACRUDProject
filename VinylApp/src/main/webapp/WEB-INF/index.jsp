<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vinylDB</title>
<jsp:include page="bootstrapHead.jsp" />
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
	<h1>vinylDB</h1>
	<hr>
	<div>
		<h2>search</h2>
	</div>
	<div>
		<form action="getAlbum.do" method="GET">
			<input type="text" name="aid" class="idbtn" placeholder="id"/> <input type="submit"
				value=" go " />
		</form>
		<br>
		<form action="searchTitle.do" method="GET">
			<input type="text" name="keyword" class="titlebtn" placeholder="title"/> <input type="submit"
				value=" go " />
		</form>
		<br>
		<form action="searchArtist.do" method="GET">
			<input type="text" name="keyword" class="artistbtn" placeholder="artist"/> <input type="submit"
				value=" go " />
		</form>
	</div>


	<div>
		<h2>browse</h2>
	</div>
	<div>
		<h4>
			<a href="showAll.do">all albums</a>
		</h4>
		<h4>
			<a href="browseAllArtists.do">by artist</a>
		</h4>
		<h4>
			<a href="browseAllGenres.do">by genre</a>
		</h4>

		<h4>
			<a href="addAlbum.do">add album</a>
		</h4>
	</div>


</body>
<jsp:include page="bootstrapFoot.jsp" />
</html>