require_relative "../mylibrary/reactor"
require_relative "../mylibrary/injector"	



	describe "case1" do
	it "100% speed of light no damge"do
			lightspeed = 100
			damageA = 0
			damageB = 0
			damageC = 0
				
			enterprise = Reactor.new.result()
			#Reactor.count_injectors.should eq(3)
			
							
		end	
 	end

	describe "case2" do
	it "90% speed of light no damge"do
			lightspeed = 90
			damageA = 0
			damageB = 0
			damageC = 0
				
			enterprise = Reactor.new(lightspeed).result()
			Reactor.count_injectors.should eq(3)
			enterprise.should eq([90,90,90])
			
							
		end	
 	end

	describe "case3" do
	it "30% speed of light no damge"do
			lightspeed = 30
			damageA = 0
			damageB = 0
			damageC = 0
				
			enterprise = Reactor.new(lightspeed).result()
			Reactor.count_injectors.should eq(3)
			enterprise.should eq([30,30,30])
			
							
		end	
 	end

	describe "case4" do
		it "90% speed of light with 20% in A and 10% damage in B"do
			lightspeed = 100
			damageA = 20
			damageB = 10
			damageC = 0
			
			enterprise = Reactor.new(lightspeed,damageA,damageB,damageC).result()
			Reactor.count_injectors.should eq(3)
			enterprise.should eq([90,100,110])
			
							
		end	
 	end


	describe "case5" do
		it "80% speed of light with 100% in C"do
			lightspeed = 80
			damageA = 0
			damageB = 0
			damageC = 100
				
			enterprise = Reactor.new(lightspeed,damageA,damageB,damageC).result()
			Reactor.count_injectors.should eq(2)
			enterprise.should eq([120,120,0])
			
							
		end	
 	end

	describe "case6" do
		it "150% speed of light no damage"do
			lightspeed = 150
			damageA = 0
			damageB = 0
			damageC = 0
				
			enterprise = Reactor.new(lightspeed,damageA,damageB,damageC).result()
			Reactor.count_injectors.should eq(3)
			enterprise.should eq([150,150,150])
			
							
		end	
 	end

	describe "case7" do
		it "140% speed of light with 30% damage in C"do
			lightspeed = 140
			damageA = 0
			damageB = 0
			damageC = 30
				
			enterprise = Reactor.new(lightspeed,damageA,damageB,damageC).result()
			Reactor.count_injectors.should eq(3)
			enterprise.should eq([150,150,120])
			
							
		end	
 	end

	describe "case8" do
		it "140% speed of light with 20% damage in A 50% damage in B and 40% damage in C"do
			lightspeed = 170
			damageA = 20
			damageB = 50
			damageC = 40
				
			expect {enterprise = Reactor.new(lightspeed,damageA,damageB,damageC).result()}.to raise_error
			Reactor.count_injectors.should eq(3)
			
							
		end	
 	end



