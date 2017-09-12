require 'pry'

class Interval
  attr_accessor :start, :end

  def initialize(s=0, e=0)
    @start = s
    @end = e
  end
end

def merge(intervals)
  convert_arr = intervals.map { |i| (i.start..i.end).to_a }

  convert_arr.each_with_object([]) do |i, arr|
    is_match = match(i, convert_arr)
    if is_match && !(i == convert_arr.last)
      arr.push([i.first, get_next(i, convert_arr).last])
    else
      arr.push([i.first, i.last])
    end
  end
end

def get_next(val, arr)
  is_get = arr[arr.index(val) + 1]
end

def match(origin, val)
  origin.each do |i|
    return true if val.select { |j| j == i}
  end
  return false
end

a = Interval.new(1, 3)
b = Interval.new(2, 6)
c = Interval.new(8, 10)
d = Interval.new(15, 18)

p merge([a, b, c, d])