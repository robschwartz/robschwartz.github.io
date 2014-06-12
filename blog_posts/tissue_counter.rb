class TissueCounter
	def initialize(tissue_count)
		@tissue_count = tissue_count
	end

	def sneeze
		if @tissue_count < 1
			return "You need to add more tissues!"
		end
	@tissue_count -= 1
		return "God bless you"
	end
	
	def cold
		if @tissue_count < 3
			return "You need to add more tissues!"
		end
	@tissue_count -= 3
		return "Feel better!"
	end

	def count
		return @tissue_count
	end

	def refill(add)
		@tissue_count +=  add
		return "You now have #{@tissue_count} tissues"
	end
end
box = TissueCounter.new(3)
p box.cold #=> "Feel better"
p box.count #=> 0 
p box.sneeze #=> "You need more tissues!"
p box.refill(4) #=> "You now have 4 tissues"
p box.count #=> 4
p box.sneeze #=> "God bless you"
p box.count #=> 3
