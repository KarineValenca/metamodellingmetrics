class CreateScales < ActiveRecord::Migration
  def change
    create_table :scales do |t|
      t.string :name_scale
      t.text :description_scale
      t.float :min_number
      t.float :max_number

      t.timestamps null: false
    end
  end
end
