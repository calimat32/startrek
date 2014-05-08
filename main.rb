require_relative 'enterprise.rb' injectorA = Enterprise.new.injectorA
     	 injectorB = Enterprise.new.injectorB
         injectorC = Enterprise.new.injectorC 
require_relative 'injector.rb'
puts "Enter lightspeed" 

lightspeed = gets.to_i

enterprise = Enterprise.new()



injectorA = Injector.new()
injectorB = Injector.new()
injectorC = Injector.new()
injectorA = Enterprise.new.injectorA
injectorB = Enterprise.new.injectorB
injectorC = Enterprise.new.injectorC 
flux_A = injectorA.flux(0,lightspeed)
flux_B = injectorB.flux(0,lightspeed)
flux_C = injectorC.flux(100,lightspeed)
number_of_injectors = Injector.number_of_instances

flux_sub_total = flux_A + flux_B + flux_C
flux_total = 3*lightspeed

flux_for_each = (flux_total - flux_sub_total )/number_of_injectors

injectorA.flux_validation(flux_A,flux_for_each)
injectorB.flux_validation(flux_B,flux_for_each)
injectorC.flux_validation(flux_C,flux_for_each)


time = 100 - flux_for_each



puts "Injector A " + "#{flux_A}" + "mg/s" 
puts "Injector B " + "#{flux_B}" + "mg/s" 
puts "Injector C " + "#{flux_C}" + "mg/s" 

puts time
