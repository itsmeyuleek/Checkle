class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#  before_action :authenticate_user!
#  load_and_authorize_resource

  def add_user_id(action_controller_params)
    params = action_controller_params
    params[:user_id] = current_user.id
    params
  end

  def after_sign_in_path_for(user)
    home_index_url
  end

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.json { head :forbidden, content_type: 'text/html' }
      format.html { redirect_to welcome_index_url, notice: exception.message }
      format.js   { head :forbidden, content_type: 'text/html' }
    end
  end
end
