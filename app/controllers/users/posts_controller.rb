class Users::PostsController < ApplicationController
  before_action :user_required!
  before_action :load_user
  before_action :load_post,  only: [:show, :destroy]

  def create
    @post = Post.new(post_params)

    authorize @post

    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Post was successfully created.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { redirect_to root_path, notice: 'Post not created.' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize @post

    @post.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def load_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:text, :visibility, :user_id)
  end

end
