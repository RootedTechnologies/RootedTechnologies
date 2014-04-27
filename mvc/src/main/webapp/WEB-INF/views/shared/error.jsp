<html>
<%
	String pageTitle = "Error";
%>
<jsp:include page="headContent.jsp">
	<jsp:param value="<%=pageTitle%>" name="pageTitle" />
</jsp:include>

<body>

	<jsp:include page="header.jsp" />

	<div id="content">
		<div id="page-title">
			<div class="container clearfix">
				<h1>
					Page Not Found<span>/ Error 404</span>
				</h1>
			</div>
		</div>
		<div class="content-wrap">
			<div class="container clearfix">
				<div class="error-404">
					<span>ooopss..! error</span>404
				</div>
				<div class="error-404-meta">
					<form action="search-results.html" method="get">
						<input type="text" id="error404-search" name="q" value=""
							placeholder="Search here &amp; Find yourself a Way..." /> <input
							type="submit" id="error404-search-submit"
							name="error404-search-submit" value="submit" />
					</form>
				</div>
			</div>
		</div>
	</div>
<!-- 	<div id="twitter-panel"> -->
<!-- 		<div class="container clearfix"> -->
<!-- 			<div id="twitter-panel-icon"> -->
<!-- 				<i class="fa fa-twitter"></i> -->
<!-- 			</div> -->
<!-- 			<div id="twitter-panel-content"> -->
<!-- 				<div class="fslider" data-animation="fade" data-pause="5000" -->
<!-- 					data-arrows="false"> -->
<!-- 					<div class="flexslider"> -->
<!-- 						<div class="slider-wrap"> -->
<!-- 							<div class="slide"></div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div id="twitter-panel-follow"> -->
<!-- 				<a href="http://twitter.com/envato">Follow Us</a> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	
 	<script type="text/javascript">
	</script>
</body>
</html>
