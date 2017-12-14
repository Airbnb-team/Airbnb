$(function() {

  var search_list = $(".option-wapper");



  function appendExplanatory(explanatory) {
   var html = `<div class="search-option1">
                <button class="aaaaa" data-user-id=${explanatory.id} data-user-name=${explanatory.title}>${explanatory.title}</div>
                </div>`
   search_list.append(html);
  }

  function appendNoExplanatory(explanatory) {
    var html = `<div class="search-option">
                 <div class="aaa">${explanatory.title}</div>
                 </div>`
    search_list.append(html);
  }

  // var search_group_field = $("input-group input-group-rooms-style resize");
  //
  // function addTitles(titles) {
  //   var html = `<input type="text" name="serach" class="rooms-search" value="${explanatory.title}">`;
  //   search_group_field.append(html);
  // }

  $(".rooms-search").on("keyup", function() {
    var input = $(".rooms-search").val();


    $.ajax({
      type: 'GET',
      url: '/rooms',
      data: { keyword: input },
      dataType: 'json'
    })

    .done(function(explanatories) {
     $(".option-wapper").empty();
     if (explanatories.length !== 0) {
       explanatories.forEach(function(explanatory){
         appendExplanatory(explanatory);

       });
     }
     else {
       appendNoExplanatory("一致する部屋はありません");
     }
   })
  });
  $(document).on("click", ".aaaaa", function(data) {
    // var input = $(".rooms-search").val();
    titles = $(this).data();
    $(this).parent().remove();
    $(".rooms-search").val(titles.userName);
    // addTitles(titles);
  });
});
