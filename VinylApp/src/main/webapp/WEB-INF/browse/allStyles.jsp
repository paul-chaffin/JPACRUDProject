<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>all styles</title>
<jsp:include page="../bootstrapHead.jsp" />
<link href="css/styles.css" rel="stylesheet">
</head>
<body>
	<main class="container-fluid">
		<h1>all styles</h1>
		<hr>
		<br>
		<div>
			<table>
				<thead>
					<tr>

						<th>style</th>


					</tr>
				</thead>
				<tbody>
					<c:forEach var="style" items="${catalog}">
						<tr>

							<td><a href="getStyle.do?style=${style}">${style}</a></td>
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