class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :description
      t.boolean :published

      t.timestamps
    end
  end
end
