class ChangingToAmountCents < ActiveRecord::Migration[6.0]
  def change
    rename_column :job_payments, :amount, :amount_cents
  end
end
