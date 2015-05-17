require 'rails_helper'

RSpec.describe Zebra, type: :model do
    it "needs to have weight" do
 	  expect(subject).to have_attribute(:weight)
 	end

 	it "has default weight of 700" do
 	  zebra = Zebra.new
 	  expect(zebra.weight).to be(700)
 	end

 	it "is valid with weight that you set" do
 	  zebra = Zebra.new(weight: 675)
 	  expect(zebra).to be_valid
 	end
end
