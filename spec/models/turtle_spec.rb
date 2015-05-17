require 'rails_helper'

RSpec.describe Turtle, type: :model do
  
  it "needs to have a shell status" do
  	expect(subject).to have_attribute(:shell)
  end

  it "is not in its shell by default" do
  	turtle = Turtle.new
  	expect(turtle.shell).to be(false)
  end

  it "is valid with starting shell status that you set" do
  	turtle = Turtle.new(shell: true)
  	expect(turtle).to be_valid
  end

  it "hides in shell" do
  	turtle = Turtle.new
  	turtle.hide
  	expect(turtle.shell).to be(true)
  end

  it "comes out of shell" do
  	turtle = Turtle.new(shell: true)
  	turtle.emerge
  	expect(turtle.shell).to be(false)
  end

end
