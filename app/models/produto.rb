class Produto < ApplicationRecord



	def beautiful_date
		self.created_at.day.to_s + " de " + self.created_at.month.to_s + " de " + self.created_at.year.to_s
	end

	def beautiful_time
		self.created_at.hour.to_s + ":" + self.created_at.min.to_s
	end


end
