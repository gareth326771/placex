class AddingToLinks < ActiveRecord::Migration[6.0]
  def change
    add_column :links, :url, :text
    add_column :links, :slug, :text
    add_column :links, :clicked, :integer, default: 0
  end
end
