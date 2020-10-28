class CreatePumpkins < ActiveRecord::Migration[6.0]
  def change
    create_table :pumpkins do |t|
      t.string :name
      t.string :img_url
      t.string :color
      t.integer :size

      t.timestamps
    end
  end
end
