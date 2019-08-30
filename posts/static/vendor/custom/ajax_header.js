$( document ).ready(function() {
  var userInfo = localStorage.getItem("user");
  obj = JSON.parse(userInfo);
  if(userInfo){
    $("#logout").removeClass('d-none');
    $("#helloUser").removeClass('d-none');
    $("#helloUser").html("Hello : "+obj.first_name+" "+obj.last_name);
    $("#login").addClass('d-none');
  }
});

var dataForm = $("#myModal").html();
function getForm(){
  $("#myModal").html(dataForm);
};

$("#logout").on('click', function(event) {
   event.preventDefault();
   /* Act on the event */
  var logoutForm = confirm("Are you want to logout!");
  if(logoutForm){
    $("#logout").addClass('d-none');
    $("#login").removeClass('d-none');
    $("#helloUser").addClass('d-none');  
    localStorage.removeItem("user");  
    localStorage.removeItem("token");  
  }
});

$("#myModal").on('submit','#loginForm', function(event) {
  event.preventDefault();
  /* Act on the event */
  var dataForm = $("#loginForm").serializeArray();
  console.log(dataForm);
  $.ajax({
    type: 'POST',
    url : "/api/posts/login/",
    data: dataForm,
    success: function (data) {
      $("#closeFormLogin").click();
      localStorage.setItem("user", JSON.stringify(data));
      localStorage.setItem("token", data.token);
      $("#logout").removeClass('d-none');
      $("#helloUser").removeClass('d-none');
      $("#helloUser").html("Hello : "+data.first_name+" "+data.last_name);
      $("#login").addClass('d-none');
      window.location.reload(true);
      },
    error: function () {
      $("#erLog").removeClass('d-none');
    },
  });
});
