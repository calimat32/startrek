require_relative 'enterprise'
require_relative 'injector'


describe Enterprise do
	
         before(:all) do
    	 @enterprise = Enterprise.new()
	 @injectorA = @enterprise.injectorA
	 @injectorB = @enterprise.injectorB
         @injectorC = @enterprise.injectorC
	 
	 end 
 
       it "has 3 injectors: A,B and C" do 
      	   
         [@injectorA,@injectorB,@injectorC].each do |element|
          element.should be_kind_of Injector
          end
		
	end

	it "case 4) returns correct flux value for A,B,C on lightspeed and damage" do
		lightspeed = 100  
		flux_A = @injectorA.flux(20,lightspeed)
		flux_B = @injectorB.flux(10,lightspeed)
		flux_C = @injectorC.flux(0,lightspeed)
		number_of_injectors = Injector.number_of_instances
		number_of_injectors.should eq(3)
		value = Enterprise.added_value(lightspeed,flux_A,flux_B,flux_C,number_of_injectors)
		@injectorA.flux_validation(flux_A,value).should eq(90)
		@injectorB.flux_validation(flux_B,value).should eq(100)
		@injectorC.flux_validation(flux_C,value).should eq(110)
	end

	it "case 5) retunrs correct flux value for A,B.C depending on lightspeed and damage " do
		lightspeed = 100  
		
		flux_A = @injectorA.flux(0,lightspeed)
		flux_B = @injectorB.flux(0,lightspeed)
		flux_C = @injectorC.flux(100,lightspeed)
	                        
		number_of_injectors = Injector.number_of_instances
		number_of_injectors.should eq(2)		

		value = Enterprise.added_value(lightspeed,flux_A,flux_B,flux_C,number_of_injectors)
                @injectorA.flux_validation(flux_A,value).should eq(120)
		@injectorB.flux_validation(flux_B,value).should eq(120)
		@injectorC.flux_validation(flux_C,value).should eq(0)		

	end

	
	



end

