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
    sub = Mailchimp.subscribe(params[:email])
    if sub.nil?
      redirect_to root_path
    else
      redirect_to sign_up_success_path
    end
  end

  def sign_up_success
    add_breadcrumb "Newsletter", :sign_up_success_path
  end

end