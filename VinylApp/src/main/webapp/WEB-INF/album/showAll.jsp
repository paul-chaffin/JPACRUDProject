<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Records</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>
<main class="container-fluid">
<h2>All Records</h2>
<br>
<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Artist</th>
					<th>Year</th>
					<th>Genre</th>
					<th>Style</th>
					<th>Label</th>
					<th>Catalog #</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="album" items="${albums}">
					<tr>
						<td>${album.id}</td>
						<td><a href="getAlbum.do?aid=${album.id}">${album.title}</a></td>
						<td>${album.artist}</td>
						<td>${album.year}</td>
						<td>${album.genre}</td>
						<td>${album.style}</td>
						<td>${album.label}</td>
						<td>${album.catNo}</td>
						<td><a href="updateAlbum.do?aid=${album.id}">Update</a></td>
						<td><a href="https://discogs.com/release/${album.releaseId}">Discogs</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</main>
</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>