#Clase inyector con propiedades de daño(damage) en %
# y velocidad_

class Injector 

	@@injector_count = 0 

        
	
       
	def initialize(damage)
	@@injector_count += 1	
	end
	
	
	def flux(damage,lightspeed)

		#Si es que el inyector esta completamente dañado
		#entonces no lo cuenta 

		
		#Calculo del flujo del inyector si se daña
		@damage = damage
		flux = (lightspeed - damage)
		if(flux >= 0 )
			return flux
		else
			flux = 0
			return flux
		end

		end

	def self.number_of_instances
	    # Retorna el numero de instancias 
	    return @@injector_count
	end

	#Metodo para calcular el tiempo de funcionamiento
	#del inyector utilizando la el parametro velocidad
	#de la luz (lightspeed) como porcentaje

	#def functional_time(lightspeed, flux)
	#@lightspeed = lightspeed 
	#@time_duration =
	#end e
        def flux_validation(flux,added_value)
	     if (flux==0)
			return flux
		else
			return flux += added_value
		end
	      end 	

	end


