(function( $, window ) {
$.fn.mobileMenu = function( options ) {
	
	// Opções	
	var settings = $.extend({
			breakpoint: 768,
			top: 50,
			color: 'white',
			background: 'black'
	}, options );
	
	var mobileWidth = settings.breakpoint,
			color = settings.color,
			background = settings.background,
			hambugerActive = false,
			hamburger = '<a id="mobile-icon"></a>',
			menu = $(this);
	
	var styles = '<style>\
					#mobile-menu { background-color: ' + background + '; top: ' + settings.top + 'px; }\
					#mobile-menu li { border-color: ' + color + '; }\
					#mobile-menu li:last-of-type { border-color: ' + color + '; }\
					#mobile-menu li a { color: ' + color + '; }\
					#mobile-menu li a:hover { color: ' + background + '; background: ' + color + '; }\
					#mobile-icon::before { background:' + color + '; }\
					#mobile-icon::after { box-shadow: 0 4px 0 0 ' + color + ', 0 -4px 0 0 ' + color + '; }\
					#mobile-icon.active::before, #mobile-icon.active::after { background:' + color + '; }\
				</style>';

	var menuFunction = function() {
		var width = $(window).width();
		if (width < mobileWidth) {
			menu.attr('id', 'mobile-menu');
			if(!hambugerActive) {
				hambugerActive = true;
				menu.before(hamburger);
				$('#mobile-menu').append(styles);
			} else {
				return false;
			}

		} else if (width > mobileWidth) {
			hambugerActive = false;
			$('#mobile-icon').remove();
			$('#mobile-menu style').remove();
			menu.attr('id', '');
		}

		$('#mobile-icon').on('click touchstart', function(e) {
			e.preventDefault();
			$('#mobile-icon').toggleClass('active');
			menu.toggleClass('active');
		});
	}
	
	menuFunction();
	$(window).resize(menuFunction);
};
}( jQuery, window ));

$('ol').mobileMenu({
	breakpoint: 1130,
	top: 52,
	background: "#b31d1d",
	color: "#fff"
});