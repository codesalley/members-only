module PostsHelper
  def author_name(post)
    writer_name = if user_signed_in?
                    "<small> Author: #{post.user.email.split('@')[0]}</small>"
                  else
                    '<small> Author: <em> Mebers only </em></small>'
                  end
    writer_name.html_safe
  end
end
