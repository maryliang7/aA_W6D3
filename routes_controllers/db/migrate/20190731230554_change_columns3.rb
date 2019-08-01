class ChangeColumns3 < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :username, :text, unique: true
  end
end
