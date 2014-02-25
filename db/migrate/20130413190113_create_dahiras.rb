class CreateDahiras < ActiveRecord::Migration
  def change
    create_table :dahiras do |t|
      t.string :nom
      t.text :desc
      t.string :adresse
      t.references :region
      t.string :telephone
      t.string :photo

      t.timestamps
    end
    add_index :dahiras, :region_id
  end
end
