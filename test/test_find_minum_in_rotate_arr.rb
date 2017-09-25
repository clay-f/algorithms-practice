require 'minitest/autorun'
require '../find_minimum_in_rotated_arrayII154'
require 'benchmark'

class TestRotate < Minitest::Test
  def setup
    @arr = Array.new(10) { rand(1..100) }.sort.uniq
  end

  def test_consume_time
    Benchmark.bmbm do |x|
      x.report("find_min_time:") { find_min(@arr) }
    end
  end
end