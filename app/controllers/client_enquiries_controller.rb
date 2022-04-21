class ClientEnquiriesController < ApplicationController
  # skip_before_action :authenticate_user!

  # def new
  #   @advertiser_enquiry = AdvertiserEnquiry.new
  # end

  def create
    @client_enquiry = ClientEnquiry.create(client_enquiry_params)
    rescue ActiveRecord::RecordInvalid
      flash[:notice] = "There was an issue, please try again."
      redirect_to root_path
    else
      # NotificationMailer.advertiser_enquiry_notification.deliver_later
      flash[:notice] = "Thank you, one of the team will be be in touch."
      redirect_to root_path
  end

  private

  def client_enquiry_params
    params.require(:client_enquiry).permit(:name, :company_name, :email, :phone_number, :message)
  end
end
