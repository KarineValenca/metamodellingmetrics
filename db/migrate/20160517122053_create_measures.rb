class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.string :name_measure
      t.text :description_measure
      t.date :date_measure
      t.float :value_measure

      t.timestamps null: false
    end
  end
end
