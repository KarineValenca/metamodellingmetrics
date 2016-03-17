class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name_project
      t.string :start_date_project

      t.timestamps null: false
    end
  end
end
