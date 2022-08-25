class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.datetime :date
      t.float :amount
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
