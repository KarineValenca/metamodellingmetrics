class Measure < ActiveRecord::Base
	belongs_to :scale
	belongs_to :unit_of_measurement
end
