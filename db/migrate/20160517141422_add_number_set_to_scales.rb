class AddNumberSetToScales < ActiveRecord::Migration
  def change
    add_reference :scales, :number_set, index: true, foreign_key: true
  end
end
