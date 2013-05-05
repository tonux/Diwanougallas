class CreateGaleris < ActiveRecord::Migration
  def change
    create_table :galeris do |t|
      t.string :titre
      t.text :desc
      t.string :photo

      t.timestamps
    end
  end
end
