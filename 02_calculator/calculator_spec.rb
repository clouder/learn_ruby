require "calculator"

describe "Calculator" do
  
  it "adds 0 and 0" do
    add(0,0).should == 0
  end

  it "adds 2 and 2" do
    add(2,2).should == 4
  end

  it "adds positive numbers" do
    add(2,6).should == 8
  end

  it "subtracts numbers" do
    subtract(10,4).should == 6
  end
  
  # Test-Driving Bonus: once the above tests pass, 
  # write tests and code for the following:
  
  it "multiplies two numbers" do
    multiply(10,4).should == 40
    multiply(8,4).should == 32
  end

  it "raises one number to the power of another number" do
    exponent(2,3).should == 8
    exponent(10,2).should == 100
  end
  
end
