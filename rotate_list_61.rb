require 'byebug'
# Given a list, rotate the list to the right by k places, where k is non-negative.

class Node
  attr_accessor :val, :next

  def initialize(val, t_next=nil)
    @val = val
    @next = t_next
  end
end

def node_length(node)
  if node.nil?
    return 0
  else
    (1 + (node_length(node.next)))
  end
end

def rotate_right(head, k)
  
end

one = Node.new(1)
two = Node.new(2)
three = Node.new(3)
four = Node.new(4)
five = Node.new(5)

one.next = two
two.next = three
three.next = four
four.next = five

five.next = one

byebug
puts "hello world"