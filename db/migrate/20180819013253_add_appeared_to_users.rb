class AddAppearedToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :appeared, :boolean, default: false, null: false
  end
end
