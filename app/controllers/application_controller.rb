class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def home
  end

  def help
  end

  def about
  end

  def show
  end
  def contact
  end
  protect_from_forgery
  include SessionsHelper

 # protect_from_forgery with: :exception
end
