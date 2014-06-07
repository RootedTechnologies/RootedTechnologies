<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<%
	String pageTitle = "Contact Us";
%>
<jsp:include page="shared/headContent.jsp">
	<jsp:param value="<%=pageTitle%>" name="pageTitle" />
</jsp:include>

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="./resources/javascript/jquery.gmap.js"></script>

<body class="stretched">
	<div id="wrapper" class="clearfix">
		<jsp:include page="shared/header.jsp" />

		<div id="page-title">
			<div class="container clearfix">
				<h1>Contact Us</h1>
				<div id="top-search">
					<form id="top-search-form" action="search-results.html"
						method="get">
						<input type="text" id="top-search-input" name="q" value=""
							placeholder="Type &amp; Hit Enter" />
					</form>
				</div>
			</div>
		</div>
		<div id="slider" style="padding: 0;">
			<div class="slider-line" style="display: block !important;"></div>
			<div id="google-map" class="gmap" style="width: 100%;"></div>
		</div>
		
		<div class="content-wrap">
			<div class="container clearfix">
				<div class="col_two_third nobottommargin">
					<!-- ============================================
                            AJAX Contact Form
                        ============================================= -->
					<div id="contact-form-container">
						<h2>
							Send us an <span>Email</span>
						</h2>
						<div id="contact-form-result"></div>
						<form class="nobottommargin" id="template-contactform" name="template-contactform" action="./contactus/message" method="post">
							<div class="col_one_third nobottommargin">
								<label for="template-contactform-name">Name <small>*</small></label>
								<input type="text" id="template-contactform-name"
									name="template-contactform-name" value=""
									class="required input-block-level" />
							</div>
							<div class="col_one_third nobottommargin">
								<label for="template-contactform-email">Email <small>*</small></label>
								<input type="text" id="template-contactform-email"
									name="template-contactform-email" value=""
									class="required email input-block-level" />
							</div>
							<div class="col_one_third nobottommargin col_last">
								<label for="template-contactform-service">Services</label> 
								<select id="template-contactform-service" name="template-contactform-service" class="input-block-level">
									<option value="">-- Select One --</option>
									<option value="Wordpress">Wordpress</option>
									<option value="Java/Spring MVC Modifications">Java/Spring MVC Web Site</option>
									<option value=".NET MVC Web Site Modifications">.NET MVC Web Site</option>
									<option value="New Website">Startup Web Site</option>
								</select>
							</div>
							<div class="clear"></div>
							<div class="col_full nobottommargin">
								<label for="template-contactform-subject">Subject <small>*</small></label>
								<input type="text" id="template-contactform-subject"
									name="template-contactform-subject" value=""
									class="required input-block-level" />
							</div>
							<div class="col_full nobottommargin">
								<label for="template-contactform-message">Message <small>*</small></label>
								<textarea class="required input-block-level"
									id="template-contactform-message"
									name="template-contactform-message" rows="10" cols="30"></textarea>
							</div>
							<div class="col_full nobottommargin hidden">
								<label for="template-contactform-botcheck">Botcheck</label>
								<textarea class="required input-block-level"
									id="template-contactform-botcheck"
									name="template-contactform-botcheck" rows="10" cols="30"></textarea>
							</div>
							<div class="col_full nobottommargin">
								<button class="btn" type="submit"
									id="template-contactform-submit"
									name="template-contactform-submit" value="submit">Send Message</button>
							</div>
						</form>
					</div>
				</div>
				<div class="col_one_third entry_content col_last nobottommargin">
					<div class="topmargin">
						<div class="product-feature">
							<span class="fa fa-map-marker"></span>
							<h3>Our Location</h3>
							<p>
								The Colony, TX 75056<br /> United States
							</p>
						</div>
						<div class="product-feature">
							<span class="fa fa-phone"></span>
							<h3>Call Us</h3>
							<p>
								#-(###)-###-####
							</p>
						</div>
						<div class="product-feature">
							<span class="fa fa-envelope-o"></span>
							<h3>Email Address</h3>
							<p>
								info@rootedtechnologies.com
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
		$(".navLink").removeClass("current");
		$(".navLink.contactUs").addClass("current");
			
			$("#template-contactform").validate({
				submitHandler : function(form) {
					$(form).find('.btn').prepend('<i class="fa fa-spinner fa-spin"></i>').addClass('disabled').attr('disabled','disabled');
					$(form).ajaxSubmit({
						target : '#contact-form-result',
						success : function() {
							$("#template-contactform").fadeOut(500, function() {
								$('#contact-form-result').fadeIn(500);
							});
						},
						error : function() {
							$('#contact-form-result').fadeIn(500);
							$("#template-contactform").find('.btn').remove('<i class="fa fa-spinner fa-spin"></i>').removeClass('disabled').removeAttr('disabled');
						}
					});
				}
			});
			
			$('#google-map').gMap({
				address : '5717 Arbor Hills Way, The Colony, Texas',
				maptype : 'ROADMAP',
				zoom : 14,
				markers : [ {
					address : "5717 Arbor Hills Way, The Colony, Texas",
					html : '<div style="width: 300px;"><h3 style="padding-bottom: 8px;"><span>Rooted</span> Technologies, LLC</h3></div>'
				} ],
				doubleclickzoom : false,
				controls : {
					panControl : true,
					zoomControl : true,
					mapTypeControl : true,
					scaleControl : false,
					streetViewControl : false,
					overviewMapControl : false
				}
			});
		</script>

		<jsp:include page="shared/footer.jsp" />
	</div>
</body>
</html>