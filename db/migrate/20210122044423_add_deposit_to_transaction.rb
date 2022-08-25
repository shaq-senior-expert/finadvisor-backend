class AddDepositToTransaction < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :deposit, :boolean, default: false
  end
end
