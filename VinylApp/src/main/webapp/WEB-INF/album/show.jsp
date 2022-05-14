<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Album Result</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>

<div>
  <h3>${album.title} - ${album.artist}</h3>
  <h4>${album.year} | ${album.genre} / ${album.style} </h4>
  <h5>${album.label} (${album.catNo})</h5>
	<br> 
  ID: ${album.id} | <a href="updateAlbum.do?aid=${album.id}">Update this album</a> | <a href="runRemove.do?aid=${album.id}">Remove this album</a> | <a href="https://discogs.com/release/${album.releaseId}">View on Discogs</a>
</div>
</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>