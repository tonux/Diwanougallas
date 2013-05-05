class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :nom
      t.string :desc

      t.timestamps
    end
  end
end
