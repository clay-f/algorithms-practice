require 'pry-byebug'

class Queue
  attr_accessor :arr

  def initialize
    @arr = []
  end
  def push(val)
    @arr.push(val)
  end

  def peek
    @arr.pop
  end

  def size
    @arr.size
  end
end

class Stack
  def initialize
    @queue = Queue.new
  end

  def push(val)
    @queue.push(val)
  end

  def pop
    @queue.peek
  end

  def top
    @queue.arr.last
  end

  def empty?
    @queue.empty?
  end
end

stack = Stack.new
stack.push('foo')
stack.push('bar')
stack.push('baz')

puts "add val"
stack.push('qux')
p stack

puts "delete val"
stack.pop
p stack
