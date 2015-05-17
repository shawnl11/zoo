require 'rails_helper'

RSpec.describe Giraffe, type: :model do
  it "has a height" do
  	expect(subject).to have_attribute(:height)
  end

  it "is valid with a height that you set" do
  	giraffe = Giraffe.new(height: 24)
  	expect(giraffe).to be_valid
  end

  it "has default height of 6 ft" do
  	giraffe = Giraffe.new
  	expect(giraffe.height).to be(6)
  end

  it "has an estimated age base off height" do
  	giraffe = Giraffe.new(height: 7)
  	expect(giraffe.guess_age).to eq("This giraffe is about 1 year old")
  end
end
