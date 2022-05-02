class WorkerEnquiriesController < ApplicationController
  # skip_before_action :authenticate_user!

  # def new
  #   @advertiser_enquiry = AdvertiserEnquiry.new
  # end

  def create
    @worker_enquiry = WorkerEnquiry.create(worker_enquiry_params)
    rescue ActiveRecord::RecordInvalid
      flash[:notice] = "There was an issue, please try again."
      redirect_to workationers_path
    else
      # NotificationMailer.advertiser_enquiry_notification.deliver_later
      flash[:notice] = "Thank you, we will be in touch with updates."
      redirect_to root_path
  end

  private

  def worker_enquiry_params
    params.require(:worker_enquiry).permit(:name, :company_name, :email, :phone_number, :message)
  end
end
