class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :cart, :current_user, :merchant?, :current_admin?

  def cart
    @cart ||= Cart.new(session[:cart] ||= Hash.new(0))
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def merchant?
    current_user && current_user.merchant_employee?
  end

  def current_admin?
    current_user && current_user.admin_user?
  end

end
