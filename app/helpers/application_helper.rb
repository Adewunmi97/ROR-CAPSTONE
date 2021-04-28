module ApplicationHelper
  def show_author_image(tweet, _extra_class = '')
    if tweet.author.image.attached?
      image_tag(tweet.author.image, class: 'rounded-circle side-img')
    else
      image_tag(
        'https://www.bing.com/th?id=OIP._x2YqKMtfxOjkfT8g9xIvQHaG5&w=103&h=100&c=8&rs=1&qlt
        =90&pid=3.1&rm=2', class: 'rounded f-by-img', alt: 'Generic user image'
      )
    end
  end

  def user_image(user, _extra_class = '')
    if user.image.attached?
      image_tag(user.image, class: 'f-by-img rounded-circle')

    else
      image_tag(
        'https://www.bing.com/th?id=OIP._x2YqKMtfxOjkfT8g9xIvQHaG5&w=103&h=100&c=8&rs=1&qlt=9
        0&pid=3.1&rm=2', class: 'f-by-img rounded-circle', alt: 'Generic user image'
      )
    end
  end

  def user_cover_pic(user, _extra_class = '')
    if user.image.attached?
      image_tag(@user.image, class: 'cover-pic')
    else
      image_tag(
        'https://www.bing.com/th?id=OIP._x2YqKMtfxOjkfT8g9xIvQHaG5&w=103&h=100&c=8&rs=1&
        qlt=90&pid=3.1&rm=2', class: 'cover-pic', alt: 'Generic user image'
      )
    end
  end

  def display_follow_btn(user)
    link_to 'Follow', user_path(user), method: :patch, class: 'badge badge-primary ml-3' if display_follow_btn(user.id)
  end

  def current_user_image(current_user, _extra_class = '')
    if current_user.image.attached?
      image_tag(current_user.image, class: 'rounded side-img img-res')
    else
      image_tag('https://www.bing.com/th?id=OIP._x2YqKMtfxOjkfT8g9xIvQHaG5&w=103&h=100&c=8&rs=1&qlt=90&pid=3.1&rm=2',
                alt: 'Generic user image', class: 'rounded side-img img-res')
    end
  end

  def user_signed_in
    if user_signed_in?
      current_user.email
      edit_user_registration_path
      destroy_user_session_path
    else
      new_user_registration_path

      new_user_session_path

    end
  end

  def auth_component(path)
    render path if current_user
  end
end
