class AddKubunToMicroposts < ActiveRecord::Migration[5.0]
  def change
    add_column :microposts, :kubun, :integer
  end
end
