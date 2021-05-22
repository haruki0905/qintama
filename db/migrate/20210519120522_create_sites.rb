class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.string :public_uid
      t.references :color, foreign_key: true
      t.references :auther, foreign_key: { to_table: :users }
      t.timestamps
    end
    add_index :sites, :public_uid, unique: true
  end
end
