class CreateCategoryVideos < ActiveRecord::Migration
  def change
    create_table :category_videos do |t|
      t.string :nom
      t.text :desc

      t.timestamps
    end
  end
end
