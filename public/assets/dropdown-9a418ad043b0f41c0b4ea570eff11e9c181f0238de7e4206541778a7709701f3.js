$(function(){
 var btn = $(".js_dropmenu span.parent");

    $(btn).bind("click", "focus", function(event){
     var shownav = $(this).find(".js_dropmenu_child");
    if($(shownav).css("display")=="none"){
        $(shownav).slideDown("fast");
    }else{
        $(shownav).slideUp("fast");
   }
  });
});
