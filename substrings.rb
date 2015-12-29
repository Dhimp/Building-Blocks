def substrings(sentence, dictionary)
	words = sentence.downcase.split(" ")
	result = {}
	dictionary.each do |e|
		words.each do |word|
			if word.include?(e)
				if result.has_key?(e)
					result[e] += 1	
				else
					result[e] = 1
				end
			end
		end
	end
	
	puts result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


substrings("Below", dictionary)
