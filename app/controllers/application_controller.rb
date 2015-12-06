class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  before_action :cart, :global_search

  def cart
    session[:cart] ||= {}
    session[:cart]
  end

  def global_search
    @q = Book.ransack(params[:q])
    @books = @q.result(distinct: true).page(params[:page]).per(5)
  end
end
