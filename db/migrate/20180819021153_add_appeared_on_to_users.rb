class AddAppearedOnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :appeared_on, :string
  end
end
