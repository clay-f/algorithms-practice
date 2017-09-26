# Given a positive integer, return its corresponding column title as appear in an Excel sheet.
def convert_to_title(n)
  tmp_arr = ('A'..'Z').to_a
  lo = 'a'
  hi = 'z'
  convert_arr =
    (1..26).map do |i|
      lo = lo + 'a'
      hi = 'a' + hi
      generator_arr(lo, hi)
    end
    convert_arr.insert(0, tmp_arr).flatten[n]

end

def generator_arr(start_t, end_t)
  ("#{start_t}".."#{end_t}").each_with_object([]) do |i, arr|
    arr.push(i.upcase)
  end
end

p convert_to_title(27)