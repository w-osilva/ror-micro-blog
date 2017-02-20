module UserDependency
  extend ActiveSupport::Concern

  def user_required!
    unless user_signed_in?
      flash[:warning] = 'You need to login'
      redirect_to root_path
    end
  end

  def load_user
    @user = current_user
  end
end