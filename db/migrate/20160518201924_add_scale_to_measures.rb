class AddScaleToMeasures < ActiveRecord::Migration
  def change
    add_reference :measures, :scale, index: true, foreign_key: true
  end
end
