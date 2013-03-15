require 'Munging'
   
describe Munging do
    before(:each) do
	@data = [{:day => 1, :max =>88, :min => 59}, {:day => 2, :max =>88, :min => 40}]
    end
    describe 'max' do
	it "should return day 2" do
	    @dataMunging = Munging.new(@data)
	end
    end
end	    
