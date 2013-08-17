class MarketingController < ApplicationController
  add_breadcrumb "Home", :root_path

  def ticker_plant
    add_breadcrumb "Ticker Plant", :ticker_plant_path
  end

  def historical_db
    add_breadcrumb "Historical Database", :historical_db_path
  end

  def trade_scanner_viewer
    add_breadcrumb "Trade Scanner Viewer", :trade_scanner_viewer_path
  end

  def network
    add_breadcrumb "Network", :network_path
  end

  def subscribe
    Mailchimp.subscribe(params[:email])
    redirect_to sign_up_success_path
    # redirect_to root_path, :notice => 'Please check your email to confirm your subscription to the newsletter!'
  end

  def sign_up_success
    add_breadcrumb "Newsletter", :sign_up_success_path
  end

end