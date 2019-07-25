class CreateIncomes < ActiveRecord::Migration[5.2]
  def change
    create_table :incomes do |t|
      t.string :name
      t.float :price
      t.text :desc
      t.timestamp :create_date
      t.timestamp :upd_date
      t.string :incategory_id

      t.timestamps
    end
  end
end
