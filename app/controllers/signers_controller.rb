class SignersController < ApplicationController
  def index
    @signers = Signer.all
  end

  def show
  end

  def edit
    @signer = Signer.find(params[:id])
  end

  def update
    @signer = Signer.find(params[:id])

    # if @signer.update(signer_params)
      @signer.flagged? ? @signer.flagged = false : @signer.flagged = true
      if params[:flag_purpose]
        @signer.update_attributes(:flag_purpose => params[:flag_purpose])
      end
      @signer.save
      redirect_to root_path
    # else
    #   flash[:danger] = "There was an error updating this signer"
    #   render :edit
    # end
  end

  def import
    if params[:password] == ENV["file_password"]
      Signer.import(params[:file])
      redirect_to root_path, notice: "Signer Data imported!"
    else
      flash[:notice] = "Incorrect password!"
      redirect_to :back
    end
  end

  # private
  #
  # def signer_params
  #   params.require(:signer).permit(:name, :location, :date, :flagged, :flag_purpose)
  # end

end
