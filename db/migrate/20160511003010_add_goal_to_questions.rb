class AddGoalToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :goal, index: true, foreign_key: true
  end
end
