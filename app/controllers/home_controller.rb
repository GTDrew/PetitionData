class HomeController < ApplicationController
  def index
    @signers = Signer.all
  end

  def location
    render json: Signer.group(:location).count
  end
end
