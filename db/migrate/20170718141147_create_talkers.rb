class CreateTalkers < ActiveRecord::Migration[5.0]
  def change
    create_table :talkers do |t|
      t.string :name
      t.string :pass

      t.timestamps
    end
  end
end
