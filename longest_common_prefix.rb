require 'pry'
require 'faker'

def longest_common_prefix(strs, str_len=0)
	if(strs.empty?)
		return str_len
	else
		if (strs.first.match("-") && str_len < strs.first.index("-"))
			str_len = strs.first.index("-")
		end
		longest_common_prefix(strs[1..-1], str_len)
	end
end
bar = []
foo = 20.times { bar.push("#{Faker::StarWars.quote}-#{Faker::Name.first_name}") }

puts longest_common_prefix(bar)
