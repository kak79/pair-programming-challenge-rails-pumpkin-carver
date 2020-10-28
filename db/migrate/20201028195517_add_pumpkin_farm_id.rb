class AddPumpkinFarmId < ActiveRecord::Migration[6.0]
  def change
    add_column :pumpkins, :farm_id, :integer
  end
end
