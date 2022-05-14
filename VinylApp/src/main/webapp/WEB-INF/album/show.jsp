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
  <h4>${album.artist} | ${album.year} | ${album.label}</h4>
  <h4>${album.genre} / ${album.style} | <a href="https://discogs.com/release/${album.releaseID}">View on Discogs</a></h4>
</div>
</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>