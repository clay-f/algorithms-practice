require 'minitest/autorun'
require_relative '../stack.rb'

class TestStack < Minitest::Test
  def setup
    @stack = Stack.new
  end

  def test_get_stack
    refute_nil(@stack)
  end

  def test_push
    @stack.push('a')
    assert_match('a', @stack.top)
    assert(@stack.size > 0)
  end
end