class AddingLinkToJobPayment < ActiveRecord::Migration[6.0]
  def change
    add_reference :links, :job_payment, foreign_key: true
  end
end
