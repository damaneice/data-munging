class Munging
    
    def initialize data
	@data = data
    end

    def findSmallestRange
	@data.sort! { |x, y| (x[:max] - x[:min]).abs <=> (y[:max] -y[:min]).abs }
    	@data.first
    end
end 
