class ApplicationController < ActionController::Base
before_action :authenticate_user!
before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :image) }
  end

  def display_follow_btn
    already_following = Following.where(follower_id: current_user.id, followed_id: params[:id] ).first
    params[:id].to_i != current_user.id && already_following.nil?
  end
  helper_method :display_follow_btn
end
