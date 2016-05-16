class CreateQuestionMetricsJoinTable < ActiveRecord::Migration
  def self.up 
  	create_table :metrics_questions, :id =>false do |t|
			t.integer :metric_id
			t.integer :question_id
	end
	add_index :metrics_questions, [:metric_id, :question_id]
  end
end
