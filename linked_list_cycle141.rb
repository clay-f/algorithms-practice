# Given a linked list, determine if it has a cycle in it.

class Node
  attr_accessor :item, :next

  def initialize(item)
    @item = item
    @next = nil
  end
end

def bycle_list?(orgin, node)
  if orgin == node.item
    return true
  else
    bycle_list(orgin, node.next)
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

five.next = one

p bycle_list?(one.item, one)