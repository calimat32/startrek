require_relative "../mylibrary/injector"

class Reactor

	attr_accessor :injectorA , :injectorB , :injectorC  
	
	@@reactor_injector_count = 0
	@@overdrive_capacity = 99
	@@time = 0
		
	def initialize(lightspeed = 100 ,damageA =0,damageB = 0,damageC= 0)
	    		
		@injectorA = Injector.new(damageA)
		@injectorB = Injector.new(damageB)
		@injectorC = Injector.new(damageC)
		
		@@reactor_injector_count = Injector.count
			
		@lightspeed = lightspeed
		
		
	        
	end

	
	def total(lightspeed)
		return 3*lightspeed
	end

	
	def given(fluxA,fluxB,fluxC)
		return fluxA + fluxB + fluxC 
	end

	def overdrive_needed()
	
		
	
		fluxA = @injectorA.inject()
		fluxB = @injectorB.inject()
		fluxC = @injectorC.inject()
		
		return (total(@lightspeed) - given(fluxA,fluxB,fluxC))/ @@reactor_injector_count
		
	end

	

	def result
		fluxA = @injectorA.inject()
		fluxB = @injectorB.inject()
		fluxC = @injectorC.inject()
		
			
		value = overdrive_needed
		if value > @@overdrive_capacity 
			begin
			  1/0
			rescue Exception => e
			  raise $!, "Unable to comply #{$!}", $!.backtrace
			end
		
		end
		lista = Array.new()
		lista.insert(0,Injector.inject_Enterprise(fluxA,value))
		lista.insert(1,Injector.inject_Enterprise(fluxB,value))	 
		lista.insert(2,Injector.inject_Enterprise(fluxC,value))	
		
		while Injector.count > 0 do
		Injector.destroy		
		end
   		
		return lista

	end
	
	def timeleft
		while Injector.count > 0 do
		Injector.destroy 
		end
		time = Injector.new.time(overdrive_needed)
		Injector.destroy
		return overdrive_needed
	end
       
	def self.count_injectors
		
		return @@reactor_injector_count
	end
end 

