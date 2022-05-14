<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vinyl Collection</title>
</head>
<body>

<form action="getAlbum.do" method="GET">
			Album ID: <input type="text" name="aid" /> <input type="submit"
				value="Show Album" />
		</form>
<br>
<hr>
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
						<td align="center"><a href="getAlbum.do?aid=${album.id}">${album.title}</a></td>
						<td>${album.artist}</td>
						<td>${album.year}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

<h1>All Records</h1>
${DEBUG}
</body>
</html>