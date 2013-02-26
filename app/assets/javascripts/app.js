$(function(){

	$(document).on( "click", ".camara_link", function(e){
		e.preventDefault();
		$.get(this.href, function(data){
			$('#actual #imagen img').attr('src', data.link)
			$('#actual #sector').text(data.sector);
			$('#actual #direccion').text(data.direccion);
		});

	});	
});