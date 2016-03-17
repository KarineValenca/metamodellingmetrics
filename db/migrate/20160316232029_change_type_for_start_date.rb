class ChangeTypeForStartDate < ActiveRecord::Migration
  def up
	change_column :projects, :start_date_project, :date
  end

  def down 
	change_column :projects, :start_date_project, :string
  end
end
