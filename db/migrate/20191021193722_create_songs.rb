class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :genre
      t.string :title
      t.string :length
      t.string :spotify

      t.timestamps
    end
  end
end
