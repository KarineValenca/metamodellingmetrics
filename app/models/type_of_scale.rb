class TypeOfScale < ActiveRecord::Base
	has_many :scales
	after_initialize :init

	def init
		self.name_type_scale ||= "Absoluta"
		self.name_type_scale ||= "Nominal"
		self.name_type_scale ||= "Ordinal"
		self.name_type_scale ||= "Intervalo"
		self.name_type_scale ||= "Racional"
	end
end
