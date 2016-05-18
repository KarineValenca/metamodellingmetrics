class AddUnitOfMeasurementToMeasures < ActiveRecord::Migration
  def change
    add_reference :measures, :unit_of_measurement, index: true, foreign_key: true
  end
end
