class AddingToJobPayments < ActiveRecord::Migration[6.0]
  def change
    add_column :job_payments, :buyer_id, :integer
    add_column :job_payments, :seller_id, :integer
    add_column :job_payments, :amount, :integer
    add_column :job_payments, :description, :string
    add_column :job_payments, :detailed_description, :text
    add_column :job_payments, :deposit_amount, :integer
  end
end
