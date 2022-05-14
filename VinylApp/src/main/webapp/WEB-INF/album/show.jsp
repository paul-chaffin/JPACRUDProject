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
  <h3>${album.title}</h3>
  <h4>${album.artist} | ${album.year}</h4>
  <h4>${album.genre} / ${album.style} | ${album.label}</h4>
  <h5><a href="https://discogs.com/release/${album.releaseId}">View on Discogs</a></h5>
  ID: ${album.id} | <a href="updateAlbum.do?aid=${album.id}">Update this album's record</a>
</div>
</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>