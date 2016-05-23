class CreateJoinTableMetricMeasure < ActiveRecord::Migration
  def change
    create_join_table :metrics, :measures do |t|
      # t.index [:metric_id, :measure_id]
      # t.index [:measure_id, :metric_id]
    end
  end
end
