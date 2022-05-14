<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update an album</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>

<form action="runUpdate.do" method="POST">
		<label for="id"> <strong>ID:</strong></label>
		<input type="text" name="id" size="4" value="${album.id}" readonly/> <br> 
		
		<label for="title"> <strong>Title:</strong></label>
		<input type="text" name="title" size="25" value="${album.title}"/> <br> 
		
		<label for="artist"> <strong>Artist:</strong></label>
		<input type="text" name="artist" size="25" value="${album.artist}"/> <br> 
		
		<label for="year"> <strong>Year:</strong></label>
		<input type="text" name="year" size="5" value="${album.year}"/> <br> 
		
		<label for="genre"> <strong>Genre:</strong></label>
		<input type="text" name="genre" size="10" value="${album.genre}"/> <br> 
		
		<label	for="style"> <strong>Style:</strong></label>
		<input type="text" name="style" size="10" value="${album.style}"/> <br> 
		
		<label	for="label"> <strong>Label:</strong></label>
		<input type="text" name="label" size="15" value="${album.label}"/> <br> 
		
		<label	for="format"> <strong>Format:</strong></label>
		<input type="text" name="format" size="4" value="${album.format}"/> <br> 
		
		<label	for="catNo"> <strong>Catalog #:</strong></label>
		<input type="text" name="catNo" size="8" value="${album.catNo}"/> <br> 
		
		<label	for="releaseId"> <strong>Discogs Release ID:</strong></label>
		<input type="text" name="releaseId" size="4" value="${album.releaseId}"/> <br> 
		
			<input type="submit" value="Update Album" />
	</form>

</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>