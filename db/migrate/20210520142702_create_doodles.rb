class CreateDoodles < ActiveRecord::Migration[6.0]
  def change
    create_table :doodles do |t|
      t.text :word, null: false
      t.integer :coordinate_x, null: false
      t.integer :coordinate_y, null: false
      t.references :user, null: false, foreign_key: true
      t.references :written_on, foreign_key: { to_table: :sites }
      t.references :transit_to, foreign_key: { to_table: :sites }
      t.references :color, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
