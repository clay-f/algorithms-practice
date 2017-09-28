require 'pry'

# Implement the following operations of a stack.
# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# empty() -- Return whether the stack is empty.
class Stack
  def initialize
    @arr = []
    @n = 0
  end

  def empty?
    @n == 0
  end

  def push(x)
    @arr.push(x)
    @n += 1
  end

  def pop
    @arr.pop
  end

  def top
    @arr.first
  end

  def size
    @n
  end
end