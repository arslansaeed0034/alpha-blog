$(document).ready(function(){
	$("#article_category_ids").change(function() {
		var id = $(this).val()
		$.ajax({
			  type:"GET",
			  url:"/categories/"+id+"/preview",
			  dataType:"script",
			  data: {some_parameter: 'hello'},
			  success:function(result){
			  //  alert(a);
		  }
		})
		// $.get("/articles/2/preview",
		// {
		//     // apiid: "1",
		//     // apikey: "1",
		//     // email: "some@email.com"	
		// });
   	
	});
});