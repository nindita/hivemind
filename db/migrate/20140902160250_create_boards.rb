class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :shortcode

      t.timestamps
    end
  end
end
