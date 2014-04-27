<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<%
	String pageTitle = "Home";
%>
<jsp:include page="shared/headContent.jsp">
	<jsp:param value="<%=pageTitle%>" name="pageTitle" />
</jsp:include>

<body class="stretched">
	<div id="wrapper" class="clearfix">
		<jsp:include page="shared/header.jsp" />
		
		<jsp:include page="shared/twitter-panel.jsp" />
		<jsp:include page="shared/footer.jsp" />
	</div>
</body>
</html>
