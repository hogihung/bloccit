class CommentsController < ApplicationController
  respond_to :html, :js

  def create
    @comment = current_user.comments.build(post_params)

    authorize @comment
    if @comment.save
      redirect_to [@comment.post.topic, @comment.post], notice: "Comment was successfully added."
    else
      flash[:error] = "There was an error creating the comment.  Please try again."
      render :new
    end
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @post  = @topic.posts.find(params[:post_id])

    @comment = @post.comments.find(params[:id])
    authorize @comment

    if @comment.destroy
      flash[:notice] = "Comment was removed."
      #redirect_to [@topic, @post]
    else
      flash[:error] = "Comment couldn't be deleted.  Try again"
      #redirect_to [@topic, @post]
    end

    respond_with(@comment) do |f|
      f.html { redirect_to [@topic, @post] }
    end
  end


  private

  def post_params
    params.require(:comment).permit(:body, :post_id)
  end

end
