$( document ).ready(function() {
  $.ajax({
    type: 'GET',
    url : "/api/posts/",
    success: function (data) {
      $('.show-post-cat').html("");
      var html = "";
      $.each(data.results, function(index,value){
        html = "<p><a href='/posts/detail/"+value.id+"'>"+value.name+"</a></p>"
              +"<small class='text-muted'>"+value.preview_text+"</small>"
              +"<hr>"; 
        $('.show-post-cat').append(html);
      });
    }
  });
});
