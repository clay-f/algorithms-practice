require 'byebug'
# reverse list

class Node
  attr_accessor :val, :next

  def initialize(val, t_next = nil)
    @val = val
    @next = t_next
  end
end


def reverse_node(node)
  if node.nil?
    return
  else
    Node.new(last_node(node), reverse_node(remove_last_node(node)))
  end
end

def remove_last_node(node)
  if node.next.nil?
    return
  else
    Node.new(node.val, remove_last_node(node.next))
  end
end

def last_node(node)
  if node.next.nil?
    return node
  else
    last_node(node.next)
  end
end

def length_node(node)
  if node.nil?
    return 0
  else
    (1 + (length_node(node.next)))
  end
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

a =  reverse_node(one)
byebug
puts "hello"