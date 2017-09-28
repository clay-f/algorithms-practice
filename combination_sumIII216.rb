# Find all possible combinations of k numbers that add up to a number n
#   given that only numbers from 1 to 9 can be used and each combination should be a unique set of numbers.
 
def combination_sum3(k, n)
  arr = (1..('9'*k).to_i).map { |i| i }

  result =
    arr.each_with_object([]) do |i, arr|
     arr.push(i.to_s.split('').map(&:to_i)) if i.to_s.split('').map(&:to_i).reduce(:+) == n
    end
  result.select { |i| i.size > 2 }.sort.uniq
end

p combination_sum3(3, 7)