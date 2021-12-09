class JobPaymentsController < ApplicationController

  def new
    @job_payement = JobPayment.new
  end
end
