class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :titre
      t.text :contenu
      t.references :user

      t.timestamps
    end
    add_index :articles, :user_id
  end
end
