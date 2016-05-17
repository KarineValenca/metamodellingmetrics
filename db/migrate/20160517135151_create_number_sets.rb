class CreateNumberSets < ActiveRecord::Migration
  def change
    create_table :number_sets do |t|
      t.string :name_number_set
      t.text :description_number_set

      t.timestamps null: false
    end
  end
end
