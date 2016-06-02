class Metric < ActiveRecord::Base
	has_and_belongs_to_many :questions
	has_many :measures
	accepts_nested_attributes_for :measures
	belongs_to :operator

	before_save :default_values

	def default_values
		self.metric_result ||= 0
	end
end
