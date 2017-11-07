require 'pry'
class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

def node_size(node)
  if node.nil?
    return 0
  else
    (1 + node_size(node.next))
  end
end


a = ListNode.new("a")
b = ListNode.new("b")
c = ListNode.new("c")
d = ListNode.new("d")
e = ListNode.new("e")

a.next = b
b.next = c
c.next = d
d.next = e

def remove_nth_from_end(node, n)
  return nil if node.nil?
  if n.zero?
    unless node.next.next.nil?
      node.next = remove_nth_from_end(node.next.next, n-=1)
      return node
    else
      node.next = remove_nth_from_end(node.next, n-=1)
      return node
    end
  else
    node.next = remove_nth_from_end(node.next, n-=1)
    return node
  end
end

tmp_size = node_size(a)

p remove_nth_from_end(a, (tmp_size-2-1))
