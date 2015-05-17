class Giraffe < ActiveRecord::Base
	def guess_age()
		#research growth vs age 
		#and use height to estimate age
		#assuming all giraffes are female
		#finish growing by 5 years age
		#one year old can be 10ft
		#double height in first year
		#6ft tall at birth
		#females 16ft tall
		height = self.height
		@one_year_height = 10
		@max_height = 16
		@length_of_growth = 5
		@yearly_growth = (@max_height - @one_year_height)/@length_of_growth
		
		if height > @one_year_height
			min_age = (height - @one_year_height) / @yearly_growth
			age = "This giraffe is #{min_age} years old or older"
		elsif height > 6 && height <= @one_year_height
			min_age = 1
			age = "This giraffe is about #{min_age} year old"
		else
			age = "This giraffe was just born"
		end
		return age
	end
end
