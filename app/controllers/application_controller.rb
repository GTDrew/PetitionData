class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def nyack_signer_count
    nyack_signers ||= Signer.where(:location => 'Nyack, NY').count
  end

  def nyack_percentage
    nyack_percentage ||= ((nyack_signer_count.to_f/6898.00)*100).round(2)
  end

  # Client.connection.select_all("SELECT first_name, created_at FROM clients WHERE id = '1'")

  # def all_future_events
  # all_future_events ||= Event.where('start_time >= ?', Date.today)
  # end

  helper_method :nyack_signer_count
  helper_method :nyack_percentage
end
