class Operator < ActiveRecord::Base
	after_initialize :init
	has_many :metrics
	def init
		self.name ||= "Adição"
		self.name ||= "Subtração"
		self.name ||= "Multiplicação"
		self.name ||= "Divisão"
	end
end
