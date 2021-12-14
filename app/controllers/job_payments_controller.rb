class JobPaymentsController < ApplicationController

  def new
    @job_payement = JobPayment.new
  end

  def create

    respond_to do |format|
      format.js
    end
    # @job_payment = JobPayment.create(job_payment_params)
    # if @job_payment.save
    #   render head :ok
    # else
    #   flash[:notice] = "Could not start payment. Please check form details."
    #   redirect_to new_job_payments_path
    # end
  end


end
