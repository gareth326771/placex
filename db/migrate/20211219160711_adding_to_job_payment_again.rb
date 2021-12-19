class AddingToJobPaymentAgain < ActiveRecord::Migration[6.0]
  def change
  add_column :job_payments, :initiating_party, :string
  add_column :job_payments, :tradesman_email, :string
  add_column :job_payments, :customer_email, :string
  add_column :job_payments, :short_description, :string
  add_column :job_payments, :tradesman_mobile, :string
  end
end
