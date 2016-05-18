class Scale < ActiveRecord::Base
	belongs_to :number_set
	belongs_to :type_of_scale
	has_many :measures
end
