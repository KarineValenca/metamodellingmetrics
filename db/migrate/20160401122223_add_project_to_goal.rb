class AddProjectToGoal < ActiveRecord::Migration
  def change
	add_reference :goals, :project, index: true, foreign_key: true
  end
end
