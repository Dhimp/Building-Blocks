def caesar_cipher(message, number)
	lower, upper = ("a".."z").to_a, ("A".."Z").to_a
	result = ""
	message.split("").each do |letter|
		if lower.include?(letter)
			num = letter.ord + number
			if num > "z".ord 
				wrap = "a".ord + (num - "z".ord - 1)
				result += wrap.chr
			else
				result += num.chr
			end
		elsif upper.include?(letter)
			num = letter.ord + number
			if num > "Z".ord
				wrap = "A".ord + (num - "Z".ord - 1)
				result += wrap.chr
			else
				result += num.chr
			end
		else
			result += letter
		end
	end
	puts result

end

caesar_cipher("What a Ztring!", 5)
