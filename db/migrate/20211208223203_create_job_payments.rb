class CreateJobPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :job_payments do |t|

      t.timestamps
    end
  end
end
