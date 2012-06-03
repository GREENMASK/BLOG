
$(document).ready(function(){
  $("#new_comment").submit(function(){
    $.post($(this).attr("action")+'.js' ,$(this).serialize(),null,"script" );
   return false;
   });
 });
