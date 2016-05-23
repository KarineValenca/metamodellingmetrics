class Measure < ActiveRecord::Base
	belongs_to :scale
	belongs_to :unit_of_measurement
	has_and_belongs_to_many :metrics
end
