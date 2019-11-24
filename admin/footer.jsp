</div>
</div>
</div>
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 agileinfo_footer_grid">
				<h3>About Us</h3>
				<p>DerpGang Name is Enough.</p>
				<div class="agileits_footer_grid_gallery">
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 agileinfo_footer_grid">
				<h3>Social Media</h3>
				<ul class="agileinfo_social_icons">
					<li><a href="https://github.com/DerpGang/" class="facebook"><span class="fa fa-github" aria-hidden="true"></span><i>-</i>Github</a></li>
				</ul>
			</div>
            <div class="col-md-4 agileinfo_footer_grid">
				<h3>Telegram</h3>
				<ul class="agileinfo_social_icons">
					<li><a href="https://github.com/DerpGang/" class="facebook"><span class="fa fa-paper-plane" aria-hidden="true"></span><i>-</i>Join Our Telegram Chat</a></li>
				</ul>
			</div>
		</div>
	</div>
<!-- //footer -->
<!-- copy-right -->
	<div class="w3agile_copy_right">
		<div class="container">
			 <p>© 2018 DerpGang. All Rights Reserved | Created by <a href="https://github.com/MRTHAKER/">MR.HACKER5476</a></p>
		</div>
	</div>
<!-- //copy-right -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					DerpGang
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="col-md-6 w3_modal_body_left">
							<img src="images/15.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="clearfix"> </div>
					</div>
				</section>
			</div>
		</div>
	</div>
<!-- //bootstrap-pop-up -->
<!-- flexisel -->
	<script type="text/javascript">
			$(window).load(function() {
				$("#flexiselDemo1").flexisel({
					visibleItems: 3,
					animationSpeed: 1000,
					autoPlay: false,
					autoPlaySpeed: 3000,    		
					pauseOnHover: true,
					enableResponsiveBreakpoints: true,
					responsiveBreakpoints: { 
						portrait: { 
							changePoint:480,
							visibleItems: 1
						}, 
						landscape: { 
							changePoint:640,
							visibleItems:2
						},
						tablet: { 
							changePoint:768,
							visibleItems: 2
						}
					}
				});
				
			});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
<!-- //flexisel -->
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smooth-scrolling -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>