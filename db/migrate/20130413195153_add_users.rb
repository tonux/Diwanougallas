class AddUsers < ActiveRecord::Migration
  def up
  	change_table(:users) do |t|
  	t.boolean :admin
  	t.boolean :adminArticle
  end
  end

  def down
  end
end
