class EmailSubscribesController < ApplicationController
  # skip_before_action :authenticate_user!

  # def new
  #   @advertiser_enquiry = AdvertiserEnquiry.new
  # end

  def create
    @email_subscribe = EmailSubscribe.create(email_subscribe_params)
    rescue ActiveRecord::RecordInvalid
      flash[:notice] = "There was an issue, please try again."
      redirect_to root_path
    else
      # NotificationMailer.advertiser_enquiry_notification.deliver_later
      flash[:notice] = "Thank you you have been added to our list!"
      redirect_to root_path
  end

  private

  def email_subscribe_params
    params.require(:email_subscribe).permit(:email)
  end
end
