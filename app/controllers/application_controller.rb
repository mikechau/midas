class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    if Rails.env != "production"
      redirect_to root_path, :alert => exception.message
    else
      redirect_to root_path
    end
  end
end