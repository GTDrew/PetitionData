class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def nyack_signer_count
    nyack_signer_count ||= Signer.where(:location => 'Nyack, NY').count
  end

  def nyack_signers
    nyack_signers ||= Signer.where(:location => 'Nyack, NY')
  end

  def nyack_percentage
    nyack_percentage ||= ((nyack_signer_count.to_f/6898.00)*100).round(2)
  end

  helper_method :nyack_signer_count
  helper_method :nyack_percentage
  helper_method :nyack_signers
end
