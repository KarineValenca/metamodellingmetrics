class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.text :description
      t.text :analyze
      t.text :purpose
      t.text :respect
      t.text :pointview
      t.text :context

      t.timestamps null: false
    end
  end
end
