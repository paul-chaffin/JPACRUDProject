<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove Album Record</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>
<h1>Remove Album</h1>
<form action="runRemove.do" method="POST">
		<label for="id"> <strong>Enter the album's ID:</strong></label>
		<input type="text" name="id" size="4"/> <br> 
		
				
			<input type="submit" value="Remove Album" />
	</form>

</body>
<jsp:include page="../bootstrapFoot.jsp"/>
</html>