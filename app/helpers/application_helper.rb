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

end
