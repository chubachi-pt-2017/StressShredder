class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :talker_id
      t.datetime :ts
      t.integer :kubun
      t.string :comment

      t.timestamps
    end
  end
end
