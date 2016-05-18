class AddTypeOfScaleToScales < ActiveRecord::Migration
  def change
    add_reference :scales, :type_of_scale, index: true, foreign_key: true
  end
end
