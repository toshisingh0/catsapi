class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :singer
      t.float :rating

      t.timestamps
    end
  end
end
