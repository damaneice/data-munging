class Input
    def initialize
	weather = lambda {|line| {:day => line[0], :max => line[1].to_f, :min => line[2].to_f}}
	football  = lambda {|line| {:day => line[0], :max => line[6].to_f, :min => line[8].to_f}}
	@strategies = {"weather.dat" => weather, "football.dat" => football}
    end
    
    def read fileName
	parsedData = [] 
	regex=/^\s*\d+\.?\s+/
	File.open(fileName).each do |line|
	   if line =~ regex
		line = line.split(' ')
		parsedData.push(@strategies[fileName].call(line))
	    end
	end
    return parsedData
    end
end
