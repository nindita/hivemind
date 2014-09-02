class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :threadd_id

      t.timestamps
    end
  end
end
