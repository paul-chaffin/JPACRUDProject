<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add an album</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>

<form action="createNewAlbum.do" method="POST">
		<label for="title"> <strong>Title:</strong></label>
		<input type="text" name="title" size="25" /> <br> 
		
		<label for="artist"> <strong>Artist:</strong></label>
		<input type="text" name="artist" size="25" /> <br> 
		
		<label for="year"> <strong>Year:</strong></label>
		<input type="text" name="year" size="5" /> <br> 
		
		<label for="genre"> <strong>Genre:</strong></label>
		<input type="text" name="genre" size="10" /> <br> 
		
		<label	for="style"> <strong>Style:</strong></label>
		<input type="text" name="style" size="10" /> <br> 
		
		<label	for="label"> <strong>Label:</strong></label>
		<input type="text" name="label" size="15" /> <br> 
		
		<label	for="format"> <strong>Format:</strong></label>
		<input type="text" name="format" size="4" /> <br> 
		
		<label	for="catNo"> <strong>Catalog #:</strong></label>
		<input type="text" name="catNo" size="8" /> <br> 
		
		<label	for="releaseId"> <strong>Discogs Release ID:</strong></label>
		<input type="text" name="releaseId" size="4" /> <br> 
		
			<input type="submit" value="Add Album" />
	</form>

</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>