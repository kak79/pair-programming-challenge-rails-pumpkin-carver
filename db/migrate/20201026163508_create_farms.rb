class CreateFarms < ActiveRecord::Migration[6.0]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :img_url
      t.string :zip_code
      t.string :description

      t.timestamps
    end
  end
end
