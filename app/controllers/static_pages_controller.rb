class StaticPagesController < ApplicationController
  add_breadcrumb "Home", :root_path

  def index
  end

  def help
    add_breadcrumb "Help", :help_path
  end

  def about
    add_breadcrumb "About", :about_path
  end

  def contact
    add_breadcrumb "Contact", :contact_path
  end

  def send_message
    UserMailer.contact(params[:email], params[:title], params[:message]).deliver
    redirect_to root_path, :notice => "Message successfully sent!"
  end

  def privacy
    add_breadcrumb "Privacy Policy", :privacy_policy_path
  end

  def tos
    add_breadcrumb "Terms of Service", :terms_of_service_path
  end

  def coming_soon
    add_breadcrumb "Coming Soon", :coming_soon_path
  end
end
