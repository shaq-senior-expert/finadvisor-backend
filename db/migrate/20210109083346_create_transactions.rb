class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.string :description
      t.integer :category_id
      t.float :amount
      t.integer :user_id
      t.string :tags

      t.timestamps
    end
  end
end
