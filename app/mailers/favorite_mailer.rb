class FavoriteMailer < ActionMailer::Base
  default from: "admin@example.com"

  def new_comment(user, post, comment)
    @user    = user
    @post    = post
    @comment = comment

    # For our own real app, change the @your-app-name-example to be a real value of your app.
    headers["Message-ID"]  = "<comments/#{@comment.id}@your-app-name-example>"
    headers["In-Reply-To"] = "<post/#{@post.id}@your-app-name-example>"
    headers["References"]  = "<post/#{@post.id}@your-app-name-example>"

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

end
