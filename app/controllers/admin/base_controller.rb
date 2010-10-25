class Admin::BaseController < ApplicationController
#  before_filter :admin_required, :setting_variable
#  filter_parameter_logging :password
#  helper_method :current_user
  layout 'admin'

  def index
    render :template => 'admin/index'
  end

  private

#    def current_user_session
#      return @current_user_session if defined?(@current_user_session)
#      @current_user_session = UserSession.find
#    end

#    def current_user
#      return @current_user if defined?(@current_user)
#      @current_user = current_user_session && current_user_session.record
#    end

#     def admin_required
#       unless current_user && current_user.admin?
#         flash[:error] = "Sorry, you don't have access to that."
#         redirect_to root_url and return false
#       end
#     end
end

