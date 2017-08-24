require 'pry'

def leeter_combinatioins(digits)
	letter = {
		2 => %w[a b c],
		3 => %w[d e f],
		4 => %w[g h i],
		5 => %w[j k l],
		6 => %w[m n o],
		7 => %w[p q r s],
		8 => %w[t u v],
		9 => %w[w x y z]
	}

test(letter[digits[0].to_i], letter[digits[1].to_i])
end


def test(foo, bar, tmp=[])
	if (foo.empty?)
		return
	else
		bar.each do |i|
			tmp.push("#{foo.first}#{i}")
		end
		tmp.push(test(foo[1..-1], bar))
	end
end



p leeter_combinatioins("23").flatten.compact