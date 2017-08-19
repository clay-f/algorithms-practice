require 'pry'

class Node
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

node1 = Node.new(2)
node2 = Node.new(4)
node3 = Node.new(3)
node1.next = node2
node2.next = node3

node4 = Node.new(4)
node5 = Node.new(5)
node6 = Node.new(6)

node5.next = node6
node6.next = node4

foo = node1
bar = node5

def add_two_numbers(l1, l2)
  printf("%-10d->\t%-10d\n", add_number(l1), add_number(l2))
end

def add_number(var)
  if(var.next.nil?)
    0
  else
    var_help(var, add_number(var.next))
  end
end

def var_help(var, rest)
  var.val + rest
end

add_two_numbers(foo, bar)
