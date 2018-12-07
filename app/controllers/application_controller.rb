class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#  before_action :authenticate_user!
#  load_and_authorize_resource
def add_user_id(action_controller_params)
    params = action_controller_params
    params[:user_id] = current_user.id
    params
  end
end
