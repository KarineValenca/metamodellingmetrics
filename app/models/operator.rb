class Operator < ActiveRecord::Base
	after_initialize :init

	def init
		self.name ||= "Adição"
		self.name ||= "Subtração"
		self.name ||= "Multiplicação"
		self.name ||= "Divisão"
	end
end
