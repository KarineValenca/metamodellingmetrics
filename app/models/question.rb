class Question < ActiveRecord::Base
	belongs_to :goal
	has_and_belongs_to_many :metrics
end
