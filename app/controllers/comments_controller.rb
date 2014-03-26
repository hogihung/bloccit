class CommentsController < ApplicationController
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


  private

  def post_params
    params.require(:comment).permit(:body, :post_id)
  end
end
