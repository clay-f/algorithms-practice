require 'pry'
# Given a list, rotate the list to the right by k places, where k is non-negative.
# For example:
# Given 1->2->3->4->5->NULL and k = 2,
# return 4->5->1->2->3->NULL.

class Node
  attr_accessor :val, :next

  def initialize(val, t_next=nil)
    @val = val
    @next = t_next
  end
end

def rotate_right(head, k)
  convert_arr_to_node(rotate_arr(head, k))
end

def rotate_arr(head, rotate_val)
 tmp_arr =   convert_arr(head).flatten.compact
 rotate_index = tmp_arr.index(rotate_val) + rotate_val
 return tmp_arr.rotate(rotate_index)
end

def convert_arr(head)
  if head.nil?
    return
  else
    Array(head.val).push(convert_arr(head.next))
  end
end

def convert_arr_to_node(arr)
  if arr.empty?
    return
  else
    Node.new(arr.first, convert_arr_to_node(arr[1..-1]))
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

p rotate_right(one, 2)