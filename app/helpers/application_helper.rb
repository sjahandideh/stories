module ApplicationHelper

  def current_user
    @user ||= User.where(id: session[:user_id]).last
  end

end
