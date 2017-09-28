# Implement the following operations of a stack.
# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# empty() -- Return whether the stack is empty.

class Stack
  def initialize
    @arr = []
  end

  def empty?
    @n.size.zero?
  end

  def push(x)
    @arr.push(x)
  end

  def pop
    tmp_first = @arr.first
    @arr.pop
    return tmp_first
  end

  def top
    @arr.first
  end

  def size
    @arr.size
  end
end