class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.decimal :hot_water, precision: 6, scale: 3
      t.decimal :cold_water, precision: 6, scale: 3
      t.datetime :measured_at

      t.timestamps
    end
  end
end
