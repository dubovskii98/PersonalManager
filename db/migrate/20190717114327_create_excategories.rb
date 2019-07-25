class CreateExcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :excategories do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
