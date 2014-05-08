require_relative "../mylibrary/reactor"
require_relative "../mylibrary/injector"
require_relative "../mylibrary/plasma"

describe "injector"do
		it "has injector"do
			name = "Injector"
			damage = 0 		
			Plasma.injector(name,damage).should be_kind_of Injector 	
		end
		end


describe Plasma do
	
		
	
		describe "injector storage" do
			it "stores injectors" do
			Plasma.stored_injectors.should be_kind_of Array 	
			end
		end

		describe "flux needed" do
		it "calculates total flux needed based on lightspeed" do
			lightspeed = 100		        
			Plasma.flux_needed(lightspeed).should eq(300)
		end
	       	end

		describe "flux_given" do
		it "caluclates flux given by all its injector" do
			Plasma.injector("InjectorA",20)
			Plasma.injector("InjectorB",10)
			Plasma.injector("InjectorC",0)
			damageC = 0
			Plasma.stored_injectors.should eq(270)
			end
		end

end
