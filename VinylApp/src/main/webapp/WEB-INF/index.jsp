<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vinyl Collection</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>
<h1>VinylDB</h1>
<hr>
<form action="getAlbum.do" method="GET">
			Find album by ID: <input type="text" name="aid" /> <input type="submit"
				value="Show Album" />
		</form>
<br>
<hr>
<h2><a href="showAll.do">View All Records</a></h2>
<br>
<hr>
<h2><a href="addAlbum.do">Add an album</a></h2>
<br>



</body>
<jsp:include page="bootstrapFoot.jsp"/>
</html>