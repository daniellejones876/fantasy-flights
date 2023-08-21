class AddMinDaysAndMaxDaysToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :min_days, :integer
    add_column :vehicles, :max_days, :integer
  end
end
