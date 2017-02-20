class ApplicationController < ActionController::Base
  include UserDependency
  include Pundit

  before_action :authenticate_user!
  protect_from_forgery

  rescue_from Pundit::NotAuthorizedError, with: :pundit_not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  helper_method :current_user

  def pundit_not_authorized(exception)
    policy_name = exception.policy.class.to_s.underscore
    flash[:warning] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
    redirect_to(root_path)
  end

  def not_found
    flash[:danger] = "Not Found"
    redirect_to root_path
  end

end
