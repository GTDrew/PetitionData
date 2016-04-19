class HomeController < ApplicationController
  def index
    @signers = Signer.all
  end

  def location
    render json: Signer.group(:location).count
  end

  def month
    render json: Signer.group_by_month(:date, format: "%B").count
  end
end
