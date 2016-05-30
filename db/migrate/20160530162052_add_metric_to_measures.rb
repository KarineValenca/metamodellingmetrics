class AddMetricToMeasures < ActiveRecord::Migration
  def change
    add_reference :measures, :metric, index: true, foreign_key: true
  end
end
