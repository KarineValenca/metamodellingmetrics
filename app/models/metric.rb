class Metric < ActiveRecord::Base
	has_and_belongs_to_many :questions
	has_many :measures
	accepts_nested_attributes_for :measures
	belongs_to :operator

end
