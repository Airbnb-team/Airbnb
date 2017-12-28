module ApplicationHelper
  def avatar_url(user)
    if user.image
      "http://graph.facebook.com/#{user.uid}/picture?type=large" # facebookの画像があった場合
    else
      # 代替の何かを返す
    end
  end

  def flash_class_for flash_type
    case flash_type
    when 'success' then 'alert-success'
    when 'error'   then 'alert-danger'
    when 'alert'   then 'alert-warning'
    when 'notice'  then 'alert-info'
    end
  end

  # def weekend_price()
  # check_in_user_input = @reservation.check_in
  # dates = []
  # dates << check_in_user_input.strftime('%a')
  # @dates_to_stay.to_i.times{
  # each_dates = check_in_user_input+=1
  # dates << each_dates.strftime('%a')
  # match_dates = dates.map{ |a| a.match(/Sat|Sun/) }
  # @day_count = match_dates.compact.count
  # }
    # if number_of_dates.to_i > 0
    # number_of_dates*params[:weekend_rates]
    # else
    # return 0
    # end
  # end

end
