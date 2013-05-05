class CreateCategoryGaleris < ActiveRecord::Migration
  def change
    create_table :category_galeris do |t|
      t.string :titre
      t.text :desc

      t.timestamps
    end
  end
end
