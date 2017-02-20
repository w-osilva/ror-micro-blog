class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @posts = policy_scope(Post).eager_load(:user).all
    @profiles = policy_scope(Profile).all
    if params[:q].present?
      @posts = @posts.where("posts.text LIKE ?", "%#{params[:q]}%")
      @profiles = @posts.map{|p| p.user.profile}.uniq{|p| p.id }
    end
  end

end
