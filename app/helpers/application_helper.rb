module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.gif'
    end
  end

  def sklon_noun(word, quantity)
    last_digit = quantity.to_s.split('').last.to_i

    if quantity > 10
      last_digit_11_14 = (quantity.to_s.split('')[-2] + quantity.to_s.split('').last).to_i
    else
      last_digit_11_14 = 0
    end

    if last_digit_11_14 > 10 && last_digit_11_14 < 15
      "#{word[2]}"
    elsif last_digit == 1
      "#{word[0]}"
    elsif last_digit > 1 && last_digit < 5
      "#{word[1]}"
    else
      "#{word[2]}"
    end
  end

  def sklon_adj(word, quantity)
    last_digit = quantity % 10

    if last_digit == 1
      "#{word[0]}"
    else
      "#{word[1]}"
    end
  end

  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end
end
