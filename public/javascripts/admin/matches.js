function made_team_clickable(){
  alert(this.innerHTML);
}

//$(document).ready(function() {
//  console.clear();

//  alert("hola...");

//  $(".tiny_box a[href]").bind('click', function() {
//    alert($(this).text());
//  });

//  alert($(".tiny_box a[href]").length + ' elements!');

//  $(".tiny_box a[href]").bind('click', this, made_team_clickable());

//  $.each($(".tiny_box a[href]"), function(index, value){
//    value.made_team_clickable();
//  });

//  $(".tiny_box a[href]").each( 
//    function(index){
//      $(this).bind(
//        "click",
////        function(){alert(this.innerHTML);alert(this.id)}
//        made_team_clickable()
//      );
//    }
//  );

//});


// Esto FUNCIONA
//$(document).ready(function() {
//  console.clear();

//  $(".tiny_box a[href]").click(function(){
//    // remove tiny box class to clean the modal box
//    $(this).parent().detach();


//    // set the id into hidden field and update view with the team name
//    if (!$("#match_local").attr("value")){
//      $("#match_local").attr("value", this.id);
//      $("#local_team").html(this.innerHTML);
//      $("#local_team").append("<a href=\"#\" id=\"del\">&nbsp;&nbsp;&nbsp;<img src=\"/images/cross.png\" alt=\"Cross\"></a>")
//      $("#del").attr("data-confirm", 'are you sure?')
//            .attr("data-method", "delete");

//    } else {
//      $("#match_visitor").attr("value", this.id);
//      $("#visitor_team").html(this.innerHTML);
//    }

//    // Add a remove image link    
//  });

//});


//<a rel="nofollow" data-remote="true" data-method="delete" data-confirm="are you sure?" href="/admin/leagues/10/fixtures/3/weeks/1">X</a>

