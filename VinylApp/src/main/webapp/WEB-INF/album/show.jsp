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

<div class="singleAlbum">
  <h2>${album.artist} - ${album.title} (${album.year})</h2>
  <ul>
  <li><strong>Label:</strong>	 ${album.label}</li>
  <li><strong>Format:</strong>	 ${album.format}</li>
  <li><strong>Genre:</strong>	 ${album.genre}</li>
  <li><strong>Style:</strong>	 ${album.style}</li>
  <li><strong>Database ID:</strong>	 	 ${album.id}</li>
  </ul>
	</div>
 <div><h3><a href="updateAlbum.do?aid=${album.id}">update</a> | <a href="runRemove.do?aid=${album.id}" >remove</a> | <a href="https://discogs.com/release/${album.releaseId}" target="_blank">view on discogs</a></h3>
</div>
</body>
<div><h4><a href="index.do">main</a></h4></div>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>