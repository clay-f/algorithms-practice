require_relative 'test_helper'
require_relative '../queue'

class TestQueue < Minitest::Test
    def setup
      @queue = Queue.new
      @queue.enqueue("a")
      @queue.enqueue("b")
    end

    def test_queue_size
      assert_equal(@queue.size, 2)
    end
end