class JobPaymentsController < ApplicationController

  def new
    @job_payment = JobPayment.new
  end

  def create
    if params[:job_payment][:initiating_party] == 'Tradesman'
      @job_payment = JobPayment.create(strong_job_payment)
      tradesman_email = params[:job_payment][:tradesman_email]
      amount = params[:job_payment][:amount_cents]
      short_description = params[:job_payment][:description]
      builders_link = 'http://paythetrade.trustshare.co/checkout?to=' + tradesman_email + '&amount=' + amount + '&description=' + short_description
      @shortened_link =  Link.shorten(builders_link)
      @qr_link = 'http://paythetrade.trustshare.co/qr.png?to=' + tradesman_email + '&amount=' + amount + '&description=' + short_description
      @job_payment.link = Link.last
      @job_payment.save
    else
      @job_payment = JobPayment.create(strong_job_payment)
    end
    respond_to do |format|
      format.js
    end
  end

  def strong_job_payment
    params.require(:job_payment).permit(:link_id, :amount_cents, :description, :detailed_description, :initiating_party, :tradesman_email, :customer_email, :tradesman_mobile, :deposit )
  end


end
