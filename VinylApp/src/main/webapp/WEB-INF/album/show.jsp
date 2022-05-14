<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Album Result</title>
<jsp:include page="../bootstrapHead.jsp"/>
<link href="css/styles.css" rel="stylesheet">
</head>
<body>

<div>
  <h3>${album.artist} - ${album.title} (${album.year})</h3>
  <ul>
  <li><strong>Label:</strong>	 ${album.label}</li>
  <li><strong>Format:</strong>	 ${album.format}</li>
  <li><strong>Genre:</strong>	 ${album.genre}</li>
  <li><strong>Style:</strong>	 ${album.style}</li>
  <li><strong>Database ID:</strong>	 	 ${album.id}</li>
  </ul>
	<br> 
 <a href="updateAlbum.do?aid=${album.id}">Update this album</a> | <a href="runRemove.do?aid=${album.id}">Remove this album</a> | <a href="https://discogs.com/release/${album.releaseId}">View on Discogs</a>
</div>
</body>
<div><h4><a href="index.do">Main</a></h4></div>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>