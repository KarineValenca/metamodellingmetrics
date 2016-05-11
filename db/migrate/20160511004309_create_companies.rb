class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name_company
      t.text :description_company

      t.timestamps null: false
    end
  end
end
