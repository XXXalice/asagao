class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  class Forbidden < StandardError; end

  private
  def current_member
    Member.find_by(id: session[:member_id]) if session[:member_id]
  end
  helper_method :current_member

  def login_reqauired
    raise Forbidden unless current_member
  end
end
