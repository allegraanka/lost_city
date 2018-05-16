class CommentsController < ApplicationController

before_action :set_post, except: :create

def create
    @post = Post.find(params[:post_id])
    p '**********'
    p params
    p @post
    @comment = @post.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      respond_to do |format|
        format.js
        # format.html { redirect_to root_path }
      end
    else
      flash[:alert] = "Check the comment form, something went wrong."
      render root_path
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    flash[:success] = "Comment deleted."
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

end
