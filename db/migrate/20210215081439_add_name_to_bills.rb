class AddNameToBills < ActiveRecord::Migration[6.0]
  def change
    add_column :bills, :name, :string
  end
end
