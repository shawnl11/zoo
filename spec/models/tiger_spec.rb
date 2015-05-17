require 'rails_helper'

RSpec.describe Tiger, type: :model do

	#does not seem to work =/
	before :each do
		tiger = Tiger.new
	end

	it "is valid with appetite that you set" do
		tiger = Tiger.new(appetite: 500)
		expect(tiger).to be_valid
	end

    it "needs food" do
 	  	expect(subject).to have_attribute(:appetite)
 	end

 	it "has default appetite of 100" do
 	  	tiger = Tiger.new
 	  	expect(tiger.appetite).to be(100)
 	end

 	it "becomes hungry" do
 		tiger = Tiger.new
 		expect(tiger.hungry).to be(true)
 	end

 	it "eats zebras!" do
 		tiger = Tiger.new(appetite: 500)
 		zebra = Zebra.new(weight: 450)
 		tiger.eat(zebra)
 		expect(tiger.appetite).to be(50)
 	end
end
