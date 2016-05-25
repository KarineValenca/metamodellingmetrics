class AddOperatorToMetrics < ActiveRecord::Migration
  def change
    add_reference :metrics, :operator, index: true, foreign_key: true
  end
end
