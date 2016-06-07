class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :metric_name
      t.text :description_metric
      t.date :calculus_date
	  t.float :metric_result
	  t.string :unit_of_measurement
	  
      t.timestamps null: false
    end
  end
end
