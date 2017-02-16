module UserDependency
  extend ActiveSupport::Concern

  def user_required!
    redirect_to root_path, alert: "You need to login" if !user_signed_in?
  end
end