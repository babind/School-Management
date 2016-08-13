$(function(){
	$(document).on("change", "#school_country", function(){
		var country = $(this).val();
			$.ajax({
				url: "/schools/get_states",
				type: 'post',
				data: 'country='+country,
				success: function(response){
					$("#school_state").replaceWith(response);
				}, 
				error: function() {
					console.log("error");
				}
			});					
	 });

	$(document).on("change", "#school_state", function(){
			var state = $(this).val();
			$.ajax({
					url: "/schools/get_cities",
					type: 'post',
					data: 'name=' + state,
					success: function(response){
						$("#school_city").replaceWith(response);
					},
					error: function(error){
						console.log(error);
					} 
			});
	});

	$(document).on("change", "#school_id", function(){
			var school_id = $(this).val();
			$.ajax({
						url: "/schools/" + school_id + "/get_users/",
						type : 'get',
						data :'id=' + school_id,
						success : function(response){
							$("#field").replaceWith(response);
						},
						error: function(error){
							console.log(error);
						}
			});
	});
});