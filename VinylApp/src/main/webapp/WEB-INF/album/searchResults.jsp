<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
<jsp:include page="../bootstrapHead.jsp" />
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
	<main class="container-fluid">
		<h1>search results: ${keyword}</h1>
		<hr>
		<br>
		<div>
			<table>
				<thead>
					<tr>
						<th>artist</th>
						<!-- <th>year</th>
						<th>format</th>
						<th>Genre</th>
					<th>Style</th>
					<th>Label</th>
					<th>Catalog #</th> -->

					</tr>
				</thead>
				<tbody>
					<c:forEach var="album" items="${albums}">
						<tr>
						
							<td><a href="getArtist.do?artist=${album.artist}">${album.artist}</a></td>
							<%--	<td>${album.id}</td>
							<td><a href="getAlbum.do?aid=${album.id}">${album.title}</a></td> 
							<td>${album.year}</td>
							<td>${album.format}</td>
							<td>${album.genre}</td>
						<td>${album.style}</td>
						<td>${album.label}</td>
						<td>${album.catNo}</td> --%>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<hr>
		<div>
			<h4>
				<a href="index.do">Main</a>
			</h4>
		</div>
</main>
</body>
<jsp:include page="../bootstrapFoot.jsp" />
</html>