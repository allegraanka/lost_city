class  UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def edit_bio
    @user = current_user
    @bio = @user.bio
  end

  def update
    @user = User.find(params[:id])
    if @user.update(bio_params)
      flash[:success] = "bio updated."
      redirect_to posts_path
    else
      flash.now[:alert] = "update failed. please check the form."
      render :edit_bio
    end
  end

  private

  def bio_params
    params.require(:user).permit(:bio)
  end

end
