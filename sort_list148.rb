require 'pry'

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

class Node
  attr_accessor :val, :next

  def initialize(val, t_next=nil)
    @val = val
    @next = t_next
  end
end

def sort_list(head)
  convert_arr(head)
end

def convert_arr(head)
  if head.nil?
    return
  else
    tmp = []
    tmp.push(head.val).push(convert_arr(head.next))
  end
end

def convert_node(arr)
  if arr.empty?
    return
  else
    Node.new(arr.first, convert_node(arr[1..-1]))
  end
end

one = Node.new(1)
two = Node.new(18)
three = Node.new(8)
four = Node.new(3)
five = Node.new(2)

one.next = two
two.next = three
three.next = four
four.next = five

p convert_node(sort_list(one).flatten.compact.sort)

