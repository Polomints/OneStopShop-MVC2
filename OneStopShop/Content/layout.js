/*

layout initialization

*/

(function($){
	var initLayout = function() {
        // example 2
		$('a.example2').zoomimage({
			border: 20,
			centered: true,
			hideSource: true
		});

        
	};

	EYE.register(initLayout, 'init');
})(jQuery)