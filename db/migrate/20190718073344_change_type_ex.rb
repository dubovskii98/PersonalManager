class ChangeTypeEx < ActiveRecord::Migration[5.2]
  def change
    change_column :expenses, :excategory_id, :string
  end
end
