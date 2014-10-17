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
		<div id="page-title">
			<div class="container clearfix">
				<h1>Let us help you!</h1>
			</div>
		</div>
		<div class="content-wrap">
			<div class="container clearfix">
<!-- 				<div class="col_one_third"> -->
				<div class="company-description col_half">
					<div>
					<h2>What do we do?</h2>
					<div class="clearfix">
						<p class="info">We are a software development firm who specializes in web applications with responsive design techniques. We are a full-stack software company, meaning that we build systems from the ground up. This includes User Interface design, Database design, back end and front end code development.</p>
					</div>
					</div>
					<br />
					<h2>Need a custom website?</h2>
					<div class="clearfix">
						<p class="info">Whether you need a website built completely from scratch or have a website that you need a little work on, we can help you.</p>  
					</div>
					<div class="clearfix">
						<p class="info">Send us an email with a few details on the project. We will then contact you to discuss the project further. If we think we can help you, we will set up a time that works for you to go over the project in detail and what needs to be done. We will begin development soon after, keeping you in the loop every step of the way. After all, it's your Website, it should be the way you want it right?</p>
					</div>
				</div>
				<div class="responsive-image col_half">
					<img src="./resources/images/responsive-design.png" alt="responsive design" title="Responsive Design" />
				</div>
			</div>
		</div>
		
		<jsp:include page="shared/twitter-panel.jsp" />
		<jsp:include page="shared/footer.jsp" />
	</div>
	
	<script type="text/javascript">
		$(".navLink").removeClass("current");
		$(".navLink.home").addClass("current");
	</script>
</body>
</html>
