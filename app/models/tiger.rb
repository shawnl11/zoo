class Tiger < ActiveRecord::Base
	def hungry()
		return true if appetite > 0
	end

	def eat(zebra)
		zebra_weight = zebra.weight
		tiger_appetite = self.appetite
		tiger_new_appetite = tiger_appetite - zebra_weight
		#update tiger appetite: -zebraweight
		self.update(appetite: tiger_new_appetite)
		#remove that zebra from zoo
		zebra.destroy
	end

end
