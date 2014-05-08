
class Plasma
	
	@@Working_Injectors = Array.new()	
	@@flux_needed = 0
	
	def self.injector(name = "Injector" ,damage = 0)
		
		if(damage != 100)		
		plasma_injector = Injector.new(damage)
		@@Working_Injectors.push(plasma_injector)		
		end
		return  plasma_injector
	end

	def self.stored_injectors
		return @@Working_Injectors	
	end

	def self.flux_needed(lightspeed)
		return @@flux_needed = 3*lightspeed
	end
	
	def self.flux_given(damageA,damageB,damageC)
		return @@Working_Injectors
	end

end
