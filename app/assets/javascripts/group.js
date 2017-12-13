$(function() {
        var first_input = $(".show_each_message:eq(0)").text()
        var first_input_split = $(".show_each_message:eq(0)").text().split('/')
         check_in = first_input_split[0]
         check_out = first_input_split[1]
         guest_count = first_input_split[2]
         guest_message = first_input_split[3]
        $( ".show_each_message:eq(0)" ).replaceWith( `
          <span>チェックイン: ${check_in}</span><br>
          <span>チェックアウト: ${check_out}</span><br>
          <span>ゲストの人数: ${guest_count}</span><br>
          <span>ユーザーのメッセージ: ${guest_message}</span><br>
          <button>承認</button> <button>拒否</button>
          ` );
         var check_in_sidebar = $(".messages-reservation_checkin")
         var check_out_sidebar = $(".messages-reservation_checkout")
         var guest_count_sidebar = $(".reservation_guest_count")
         check_in_sidebar.replaceWith(
          `${check_in}` );
         check_out_sidebar.replaceWith(
          `${check_out}` );
         guest_count_sidebar.replaceWith(
          `${guest_count}` );
        console.log(first_input_split);
    });
