class CreateEvenements < ActiveRecord::Migration
  def change
    create_table :evenements do |t|
      t.string :title
      t.text :desc
      t.string :lieu
      t.date :date_event

      t.timestamps
    end
  end
end
