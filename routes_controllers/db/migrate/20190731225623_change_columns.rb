class ChangeColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :email #obsolete 
    add_column :users, :username, :text
  end
end
