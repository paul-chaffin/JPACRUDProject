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
<h2>All Records</h2>
<br>
<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Artist</th>
					<th>Year</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="album" items="${albums}">
					<tr>
						<td>${album.id}</td>
						<td><a href="getAlbum.do?aid=${album.id}">${album.title}</a></td>
						<td>${album.artist}</td>
						<td>${album.year}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>