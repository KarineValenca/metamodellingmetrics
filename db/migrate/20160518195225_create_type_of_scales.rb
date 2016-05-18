class CreateTypeOfScales < ActiveRecord::Migration
  def change
    create_table :type_of_scales do |t|
      t.string :name_type_scale
      t.text :description_type_scale

      t.timestamps null: false
    end
  end
end
