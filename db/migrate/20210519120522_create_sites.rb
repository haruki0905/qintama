class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.string :color_code
      t.string :public_uid

      t.timestamps
    end
    add_index :sites, :public_uid, unique: true
  end
end
