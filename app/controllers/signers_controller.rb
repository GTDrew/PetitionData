class SignersController < ApplicationController
  def import
    Signer.import(params[:file])
    redirect_to root_path, notice: "Signer Data imported!"
  end
end
