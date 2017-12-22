$(function() {

  var search_list = $(".option-wapper");



  function appendLocation(location) {
   var html = '<div class="search-option1">' +
                '<button class="aaaaa" data-user-id=' + location.id + '>' + location.country + '</div>' +
                '</div>';
   search_list.append(html);
  }

  function appendNoLocation(location) {
    var html = '<div class="search-option">' +
                 '<div class="aaa">' + location.city + '</div>' +
                 '</div>';
    search_list.append(html);
  }

  $(".rooms-search").on("keyup", function() {
    var input = $(".rooms-search").val();


    $.ajax({
      type: 'GET',
      url: '/rooms',
      data: { keyword: input },
      dataType: 'json'
    })

    .done(function(locations) {
     $(".option-wapper").empty();
     if (locations.length !== 0) {
       locations.forEach(function(location){
         appendLocation(location);


       });
     }
     else {
       appendNoLocation("一致する部屋はありません");
     }
   })
  });
  $(document).on("click", ".aaaaa", function(data) {
    // var input = $(".rooms-search").val();
    titles = $(this).data();
    // $(this).parent().remove();
    $(".rooms-search").val(titles.userName);
    // addTitles(titles);
  });
});
