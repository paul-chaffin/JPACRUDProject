<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Albums</title>
<jsp:include page="../bootstrapHead.jsp" />
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
	<main class="container-fluid">
		<h1>all artists</h1>
		<hr>
		<br>
		<div>
			<table>
				<thead>
					<tr>

						<th>artist</th>


					</tr>
				</thead>
				<tbody>
					<c:forEach var="artist" items="${artists}">
						<tr>

							<td><a href="getArtist.do?artist=${artist}">${artist}</a></td>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<hr>
		<div><h4>
			<a href="index.do">main</a>
		</h4></div>
	</main>
</body>
<jsp:include page="../bootstrapFoot.jsp" />
</html>