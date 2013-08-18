class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :ensure_domain

  rescue_from CanCan::AccessDenied do |exception|
    if Rails.env != "production"
      redirect_to root_path, :alert => exception.message
    else
      redirect_to root_path
    end
  end

  def ensure_domain
    if request.env['HTTP_HOST'] != ENV['PRODUCTION_HOST_URL'] && Rails.env == 'production'
      # HTTP 301 is a "permanent" redirect
      redirect_to "http://#{ENV['PRODUCTION_HOST_URL']}", :status => 301
    end
  end

end