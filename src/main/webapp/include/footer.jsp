<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
   </div><! --/row -->
	 </div><! --/container -->
        </div><! --/cwrap -->
<!-- *****************************************************************************************************************
   FOOTER
****************************************************************************************************************** -->
<div id="footerwrap" class="pt-5 pb-4" style="background:#222; color:#fff;">
  <div class="container">
    <div class="row">

      <!-- About -->
      <div class="col-lg-4 mb-4">
        <h4>About</h4>
        <div class="hline-w" style="width:60px;height:3px;background:#fff;margin:10px 0 15px;"></div>
        <p>
          TestApp is a simple user-management demo built with JSP/Servlets and JDBC.
          It showcases a classic MVC flow—forms → controller → DAO → database—
          with clean, minimal UI and reliable CRUD operations.
        </p>
      </div>

      <!-- Social Links -->
      <div class="col-lg-4 mb-4">
        <h4>Social</h4>
        <div class="hline-w" style="width:60px;height:3px;background:#fff;margin:10px 0 15px;"></div>
        <p class="fs-5" style="letter-spacing:1px;">
          <a href="https://github.com/" target="_blank" rel="noopener" class="me-3" title="GitHub" style="color:#fff;"><i class="fa fa-github"></i></a>
          <a href="https://www.linkedin.com/" target="_blank" rel="noopener" class="me-3" title="LinkedIn" style="color:#fff;"><i class="fa fa-linkedin"></i></a>
          <a href="https://twitter.com/" target="_blank" rel="noopener" class="me-3" title="Twitter / X" style="color:#fff;"><i class="fa fa-twitter"></i></a>
          <a href="https://www.instagram.com/" target="_blank" rel="noopener" class="me-3" title="Instagram" style="color:#fff;"><i class="fa fa-instagram"></i></a>
        </p>
        <p class="mt-3">
          Contact: <a href="mailto:support@testapp.local" style="color:#fff;text-decoration:underline;">support@testapp.local</a>
        </p>
      </div>

      <!-- Address -->
      <div class="col-lg-4 mb-4">
        <h4>Where We Are</h4>
        <div class="hline-w" style="width:60px;height:3px;background:#fff;margin:10px 0 15px;"></div>
        <address style="line-height:1.7;">
          TestApp<br/>
          Hyderabad, India<br/>
          Mon–Fri, 10:00–18:00 IST
        </address>
      </div>

    </div><!-- /row -->

    <div class="row">
      <div class="col-12 text-center mt-3" style="opacity:.8;">
        <small>
          &copy; <%= java.time.Year.now() %> TestApp •
          <a href="<%= request.getContextPath() %>/usercontroller?page=listusers" style="color:#fff;text-decoration:underline;">Users</a> •
          <a href="<%= request.getContextPath() %>/" style="color:#fff;text-decoration:underline;">Home</a>
        </small>
	      </div>
	    </div>
	  </div><!-- /container -->
	</div><!-- /footerwrap -->
	<div style="text-align:center; margin-top:20px; color:#ccc;">
    <small>
      &copy; <%= java.time.Year.now() %> TestApp &bull;
      <a href="<%= request.getContextPath() %>/usercontroller?page=listusers" style="color:#fff;text-decoration:underline;">Users</a> &bull;
      <a href="<%= request.getContextPath() %>/" style="color:#fff;text-decoration:underline;">Home</a>
    </small>
	</div>
	

	 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/retina-1.1.0.js"></script>
	<script src="assets/js/jquery.hoverdir.js"></script>
	<script src="assets/js/jquery.hoverex.min.js"></script>
	<script src="assets/js/jquery.prettyPhoto.js"></script>
  	<script src="assets/js/jquery.isotope.min.js"></script>
  	<script src="assets/js/custom.js"></script>


    <script>
// Portfolio
(function($) {
	"use strict";
	var $container = $('.portfolio'),
		$items = $container.find('.portfolio-item'),
		portfolioLayout = 'fitRows';
		
		if( $container.hasClass('portfolio-centered') ) {
			portfolioLayout = 'masonry';
		}
				
		$container.isotope({
			filter: '*',
			animationEngine: 'best-available',
			layoutMode: portfolioLayout,
			animationOptions: {
			duration: 750,
			easing: 'linear',
			queue: false
		},
		masonry: {
		}
		}, refreshWaypoints());
		
		function refreshWaypoints() {
			setTimeout(function() {
			}, 1000);   
		}
				
		$('nav.portfolio-filter ul a').on('click', function() {
				var selector = $(this).attr('data-filter');
				$container.isotope({ filter: selector }, refreshWaypoints());
				$('nav.portfolio-filter ul a').removeClass('active');
				$(this).addClass('active');
				return false;
		});
		
		function getColumnNumber() { 
			var winWidth = $(window).width(), 
			columnNumber = 1;
		
			if (winWidth > 1200) {
				columnNumber = 5;
			} else if (winWidth > 950) {
				columnNumber = 4;
			} else if (winWidth > 600) {
				columnNumber = 3;
			} else if (winWidth > 400) {
				columnNumber = 2;
			} else if (winWidth > 250) {
				columnNumber = 1;
			}
				return columnNumber;
			}       
			
			function setColumns() {
				var winWidth = $(window).width(), 
				columnNumber = getColumnNumber(), 
				itemWidth = Math.floor(winWidth / columnNumber);
				
				$container.find('.portfolio-item').each(function() { 
					$(this).css( { 
					width : itemWidth + 'px' 
				});
			});
		}
		
		function setPortfolio() { 
			setColumns();
			$container.isotope('reLayout');
		}
			
		$container.imagesLoaded(function () { 
			setPortfolio();
		});
		
		$(window).on('resize', function () { 
		setPortfolio();          
	});
})(jQuery);
</script>
  </body>
</html>
