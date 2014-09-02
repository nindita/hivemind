class CreateThreadds < ActiveRecord::Migration
  def change
    create_table :threadds do |t|
      t.string :name
      t.integer :board_id

      t.timestamps
    end
  end
end
