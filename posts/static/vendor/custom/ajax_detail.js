var main_cmt=0;
var main_cmt_count=0;
var fullname;
var userInfo;
var main_reley;
var new_id = 0;

$( "body" ).on( "click", "#reply", function() {
	var id = $(this).attr("alt");
	if(id!=main_reley)
	  $("#form_comment_child-"+main_reley).slideUp();
	main_reley=id;
	$("#form_comment_child-"+id).slideToggle("slow");
});

if(localStorage.getItem("user")){
	userInfo = localStorage.getItem("user");
	userInfo = JSON.parse(userInfo);
	fullname = userInfo.first_name + " " + userInfo.last_name;        
}

$( document ).ready(function() {
	var pathname = window.location.pathname
	console.log(pathname);
	pathname = pathname.split("/");
	new_id = pathname[3];
	function loadCommment(from){
	$.ajax({
	    type: 'GET',
	    url : "/api/posts/comment/?new_id="+new_id+"&limit=5&offset="+from,
	    success: function (data) {
	      var html;
	      main_cmt_count  = data.count
	      $.each(data.results, function(index,value){
	        var htmlchildren="";
	        if(value.childrent.length>0){
	          $.each(value.childrent,function(index,value){
	            htmlchildren += `
	                <div class="col-md-12">
	                  <p><strong>${value.fullname}</strong></p>
	                  <p>${value.content}</p>
	                  <hr>
	                </div>
	            `;                      
	          });
	        }
	        html = htmlForm(value.id, value.fullname, value.content,htmlchildren);
	        $(".list_comment").append(html);
	      });
	    }
	});
};

loadCommment(0);
	$(window).scroll(function() {
	  var startLoad = $("#commentParentAddForm" ).offset().top;
	  if($(window).scrollTop() + $(window).height() >= startLoad && main_cmt< main_cmt_count) {
	    loadCommment(main_cmt+=5);
	  }
	});
});       

function likePost(e,id){
	e.preventDefault();
	if(userInfo){
	  $.ajax({
	    type: 'POST',
	    url : "/api/posts/like/",
	    dataType: 'json',
	    headers: {
	      "authorization": 'Token ' + localStorage.getItem("token")
	    },           
	    data : {
	      id_post : id,
	    },
	    success: function (data) {
	      $('#like_post').html(data.number_of_like);
	    },
	    error: function () {
		},
	  }); 
	}else{
	 	alert("Vui long dang nhap de thuc hien chuc nang nay");
	}
};


$("#commentParentAddForm").on('submit', function(event) {
	event.preventDefault();
	if(localStorage.getItem("user")){
		var dataForm = $("#commentParentAddForm").serializeArray();
		dataForm.push({name: 'fullname', value: fullname});
		dataForm.push({name: 'new', value: new_id});
		$.ajax({
		  type: 'POST',
		  url : "/api/posts/comment/create/",
		  dataType: 'json',
		  headers: {
		    "authorization": 'Token '+ localStorage.getItem("token"),
		  },           
		  data : dataForm,
		  success: function (data) {
		    var html = htmlForm(data.id, data.fullname, data.content,"");
		    $(".list_comment").append(html);
		  $("#commentParentAddForm").trigger("reset");
		  },
		  error: function () {
		    alert("Vui long dang nhap de thuc hien chuc nang nay");
		  },
		});      
	}else{
	  alert("Vui long dang nhap de thuc hien chuc nang nay")
	}      
}); 

$(".list_comment").on('click',".btn.btn-success", function(event) {
	var dataForm = $("#commentChildrenAddForm-"+main_reley).serializeArray();
	dataForm.push({name: 'fullname', value: fullname});
	dataForm.push({name: 'parent', value: main_reley});
	dataForm.push({name: 'new', value: new_id});
	$.ajax({
	  type: 'POST',
	  url : "/api/posts/comment/create/",
	  dataType: 'json',
	  headers: {
	    "authorization": 'Token '+ localStorage.getItem("token"),
	  },           
	  data : dataForm,
	  success: function (data) {
	    var html = `
	              <div class="col-md-12">
	                <p><strong>${data.fullname}</strong></p>
	                <p>${data.content}</p>
	                <hr>
	              </div>
	    `;
	    $(".list_comment_children-"+main_reley).append(html);
	  $("#commentChildrenAddForm-"+main_reley).trigger("reset");
	  },
	  error: function () {
	    alert("Vui long dang nhap de thuc hien chuc nang nay");
	  },
	});  
});         

function htmlForm(a,b,c,d){
var str=`
        <div class="row">
          <div id="cmt-${a}" class="col-md-12" style="margin-bottom: 20px;padding-right: 40px">
              <p>
              <h3 class="float-left" ><strong>${b}</strong></h3>
              </p>
              <div class="clearfix"></div>
              <p>
               ${c}
              </p>
              <p>
                <a id="reply" alt="${a}" class="float-right btn btn-outline-primary ml-2">
                <i class="fa fa-reply"></i> Reply</a>
              </p>
          </div>
        </div>
        <div class="card card-inner" style="margin-left: 4rem;display:none;" id="form_comment_child-${a}">
           <div class="card-body">
              <div class="row">
                  <div class="list_comment_children-${a}">${d}</div>
                  <div class="col-md-12" id="contains_children">
                    <hr>
                    <form action="javascript:void(0)" id="commentChildrenAddForm-${a}">
                       <div class="form-group">
                          <label >Content (*): </label>
                          <textarea required class="form-control" name="content"></textarea>
                       </div>
                       <input type="submit" class="btn btn-success" id="smtc-${a}" value="Submit">
                    </form>
                 </div> 
              </div>
           </div>
        </div>
      </div>
      `;   
return str;     
}  

