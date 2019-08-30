$( document ).ready(function() {
    $.ajax({
      type: 'GET',
      url : "/api/posts/categories/",
      success: function (data) {
        var html = "";
        $.each(data.results, function(index,value){
        	html = "<a href='javascript:void(0);' id='category-"+value.id+"' onclick='showListPost("+value.id+")' class='list-group-item'>"+value.name+"</a>"; 
        	$('.list-group').append(html);
        	});
    	}
	});
});

function showListPost(id){
	var name_cat = $("#category-"+id).html();
	$(".card-header").html(name_cat);
	$.ajax({
	  type: 'GET',
	  url : "/api/posts/categories/list/?cat_id="+id,
	  success: function (data) {
	    $('#post-detail').attr({
	      style: 'display:none'
	    });
	    $('#comment-detail').attr({
	      style: 'display:none'
	    });
	    $('.card-body').html("");
	    $('.show-post-cat').html("");
	    var html = "";
	    $.each(data.results, function(index,value){
	      html = "<p><a href='/posts/detail/"+value.id+"/'>"+value.name+"</a></p>"
	            +"<small class='text-muted'>"+value.preview_text+"</small>"
	            +"<hr>"; 
	      $('.show-post-cat').append(html);
	    });
	  }
	}); 
}