class CreateLieuxHistoriques < ActiveRecord::Migration
  def change
    create_table :lieux_historiques do |t|
      t.string :nom
      t.text :desc
      t.string :photo

      t.timestamps
    end
  end
end
