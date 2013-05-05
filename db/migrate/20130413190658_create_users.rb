class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.string :telephone
      t.string :photo
      t.references :dahira

      t.timestamps
    end
    add_index :users, :dahira_id
  end
end
