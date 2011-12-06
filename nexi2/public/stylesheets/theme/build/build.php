<?php 

require 'Files.php';

// Combine CSS files
Files::combine(
	array (
		'css/reset.css'
		, 'css/text.css'
		, 'css/layout.css'
		, 'css/nav.css'
		, 'css/grid.css'
		, 'css/widgets.css'		
		, 'css/buttons.css'
		, 'css/forms.css'

		, 'css/x.guidely.css'
		, 'css/x.modal.css'
		
		, 'css/x.msgAlert.css'
		, 'css/x.msgBar.css'
		, 'css/x.msgGrowl.css'
		
		, 'css/x.fullcalendar.css'
		, 'css/x.jquery.stepy.css'
		, 'css/x.jquery.lightbox-0.5.css'
		, 'css/x.jquery.visualize.css'
		, 'css/x.dataTables.css'
		
		, 'css/pages.css'
		, 'css/readymade.css'
		
		, 'css/custom.css'
	)				
	, "css/all.css"); 
	
// Combine JS files			
Files::combine(
	array (
		'js/jquery/jquery-1.5.2.min.js'
		, 'js/jquery/jquery-ui-1.8.13.custom.min.js'
		, 'js/jquery/jquery.dataTables.min.js'
		, 'js/jquery/jquery.lightbox-0.5.min.js'
		, 'js/jquery/jquery.placeholder.min.js'
		, 'js/jquery/jquery.stepy.js'
		, 'js/jquery/jquery.tablesorter.min.js'
		, 'js/jquery/fullcalendar.min.js'
		, 'js/jquery/jquery.visualize.js'
		, 'js/jquery/jquery.visualize.tooltip.js'
		, 'js/jquery/jquery.cookie.js'
		
		, 'js/misc/excanvas.min.js'
		
		, 'js/jquery/guidely.js'
		, 'js/jquery/modal.js'
		
		, 'js/jquery/msgAlert.js'
		, 'js/jquery/msgGrowl.js'
		, 'js/jquery/msgBar.js'
		
		, 'js/ReadyMade.js'
		, 'js/ReadyMade.Nav.js'
		, 'js/ReadyMade.Charts.js'
	)				
	, "js/all.js"); 
?>