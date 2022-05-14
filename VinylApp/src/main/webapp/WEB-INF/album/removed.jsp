<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Album Removed</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>

<div>
  <h2>"${artist} - ${title} successfully removed (ID: ${aid})</h2>
  <h4><a href="index.do">Go home</a></h4>
</div>
</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>