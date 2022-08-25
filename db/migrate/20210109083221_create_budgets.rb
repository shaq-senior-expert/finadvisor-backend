class CreateBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :budgets do |t|
      t.float :max
      t.float :min
      t.string :month
      t.integer :year
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
