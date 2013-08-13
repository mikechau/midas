class HomeController < ApplicationController

  def index
    if user_signed_in?
      add_breadcrumb "Home", :root_path
    end
  end
end
