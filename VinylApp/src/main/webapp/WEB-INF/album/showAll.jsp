<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Albums</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>
<main class="container-fluid">
<h2>All Albums</h2>
<hr>
<br>
<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Artist</th>
					<th>Year</th>
					<!-- <th>Genre</th>
					<th>Style</th>
					<th>Label</th>
					<th>Catalog #</th> -->
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="album" items="${albums}">
					<tr>
						<td>${album.id}</td>
						<td><a href="getAlbum.do?aid=${album.id}">${album.title}</a></td>
						<td>${album.artist}</td>
						<td>${album.year}</td>
						<%-- <td>${album.genre}</td>
						<td>${album.style}</td>
						<td>${album.label}</td>
						<td>${album.catNo}</td> --%>
											</tr>
				</c:forEach>
			</tbody>
		</table>
		<hr>
		<h4><a href="index.do">Go home</a></h4>
		</main>
</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>