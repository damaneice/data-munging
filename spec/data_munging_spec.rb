require 'Munging'
   
describe Munging do
    describe 'min' do
	it "should return day 3" do
	    data = [{:day => 1, :max =>88, :min => 59}, {:day => 2, :max =>88, :min => 40}, {:day => 3, :max =>88, :min => 70}]
	    dataMunging = Munging.new(data)
	    dataMunging.findSmallestRange()[:day].should eq 3
	end
	it "should return day 2" do
	    data = [{:day => 1, :max =>88, :min => 59}, {:day => 2, :max =>50, :min => 60}, {:day => 3, :max =>88, :min => 70}]
	    dataMunging = Munging.new(data)
	    dataMunging.findSmallestRange()[:day].should eq 2
	end
    end
end	    
