require 'pry'

# Implement the following operations of a queue using stacks.

# push(x) -- Push element x to the back of queue.
# pop() -- Removes the element from in front of queue.
# peek() -- Get the front element.
# empty() -- Return whether the queue is empty.


class Node
  attr_accessor :item, :next
  def initialize(item)
    @item = item
    @next = nil
  end
end

class Stack < Node
  attr_accessor :first, :n
  def initialize
    @first
    @n = 0
  end

  def pop
    tmp_val = @first.item
    @first = @first.next
    return tmp_val
  end

  def push(val)
    old_first = @first
    @first = Node.new(val)
    @first.next = old_first
    @n += 1
  end

  def size
    @n
  end

  def empty?
    @n.zero?
  end
end

class Queue
  def initialize
    @queue = Stack.new
  end

  def push(val)
    @queue.push(val)
  end

  def pop
    copy_queue = @queue.clone.first
    @queue.pop
    tmp_val = 0
    loop do
      if copy_queue.next.next.nil?
        tmp_val = copy_queue.next.item
        copy_queue.next = nil
        break
      else
        copy_queue = copy_queue.next
      end
    end
    return tmp_val
  end

  def empty?
    @queue.empty?
  end

  def peek
    @queue.first
  end
end


queue = Queue.new
"abcdefghi".each_char { |i| queue.push i }

puts queue.pop
puts queue.pop
puts queue.pop
puts queue.pop