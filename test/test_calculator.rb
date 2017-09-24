require 'minitest/autorun'
require '../calculator'

class TestCalculator < Minitest::Test
  def setup
    @calc = Calculator.new
  end

  def test_calculator_add_subtract
    assert_equal(2, @calc.add(1, 1))
    assert_equal(1, @calc.subtract(2, 1))
  end

end