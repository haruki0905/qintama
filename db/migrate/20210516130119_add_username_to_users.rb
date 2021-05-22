class AddUsernameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_reference :last_visited, foreign_key: { to_table: :sites }
  end
end
