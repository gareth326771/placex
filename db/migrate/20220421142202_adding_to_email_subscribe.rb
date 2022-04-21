class AddingToEmailSubscribe < ActiveRecord::Migration[6.0]
  def change
    add_column :email_subscribes, :email, :string
  end
end
