<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>


<html>
<head>
	<title>Home - Rooted Technologies</title>
</head>
<body>
<jsp:include page="shared/header.jsp" />

<div class="container">
	<h1>
		Rooted Technologies  
	</h1>
	
	<P>  The time on the server is ${serverTime}. </P>
</div>
</body>
</html>
