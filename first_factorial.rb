# Using the Ruby language, have the function FirstFactorial(num) take the num parameter being passed and return the factorial of it (e.g. if num = 4,
#  return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18 and the input will always be an integer. 
def first_factorial(num)
  return 1 if num.zero?
  (num * first_factorial(num-1))
end

puts first_factorial($stdin.gets.to_i)