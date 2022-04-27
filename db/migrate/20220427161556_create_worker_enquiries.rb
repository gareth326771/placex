class CreateWorkerEnquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :worker_enquiries do |t|
      t.string :name
      t.string :company_name
      t.string :email
      t.string :phone_number
      t.text :message

      t.timestamps
    end
  end
end
