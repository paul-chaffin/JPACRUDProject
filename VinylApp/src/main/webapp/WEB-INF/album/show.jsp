<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Album Result</title>
<jsp:include page="../bootstrapHead.jsp" />
<link href="css/single.css" rel="stylesheet">
</head>
<body>

	<div>
		<h2>
			<a href="getArtist.do?artist=${album.artist}">${album.artist}</a> -
			${album.title} (${album.year})
		</h2>
		<a href="/img/${album.catNo}.jpeg"><img
			src="/img/${album.catNo}.jpeg"></a>
		<div class="tiny">
			<p>
			<table>
			<tr>
				<td><strong>genre:</strong></td>
				<td><strong>${album.genre}</strong></td>
			</tr>
			<tr>
				<td><strong>style:</strong></td>
				<td><strong>${album.style}</strong></td>
			</tr>
			<tr>
				<td><strong>format:</strong></td>
				<td><strong>${album.format}</strong></td>
			</tr>
			<tr>
				<td><strong>label:</strong></td>
				<td><strong>${album.label}</strong></td>
			</tr>
			<tr>
				<td><strong>catalog #:</strong></td>
				<td><strong>${album.catNo}</strong></td>
			</tr>
			<tr>
				<td><strong>db id:</strong></td>
				<td><strong>${album.id}</strong></td>
			</tr>
			</table>
			</p>
		</div>
	</div>
	<div>
		<h3>
			<a href="updateAlbum.do?aid=${album.id}">update</a> | <a
				href="runRemove.do?aid=${album.id}">remove</a> | <a
				href="https://discogs.com/release/${album.releaseId}"
				target="_blank">view on discogs</a>
		</h3>
	</div>
</body>
<div>
	<h4>
		<a href="index.do">main</a>
	</h4>
</div>
<jsp:include page="../bootstrapFoot.jsp" />
</html>