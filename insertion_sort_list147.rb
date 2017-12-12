# Sort a linked list using insertion sort.

class ListNode
  attr_accessor :val, :next, :list

  def initialize(val)
    @val = val
    @next = nil
  end

  def to_a
    arr = []
    node = self
    until node.nil?
      arr.push(node.val)
      node = node.next
    end
    return  arr
  end
end

def insertion_list_sort(head)
  tmp_arr = head.to_a
  sorted_arr = tmp_arr.sort
  tmp_list = ListNode.new(sorted_arr.shift)
  sorted_arr.size.times do
    insert_node(tmp_list, sorted_arr.shift)
  end
  return tmp_list
end

def insert_node(node, val)
  if node.next.nil?
    node.next = ListNode.new(val)
  else
    node = insert_node(node.next, val)
  end
  return node
end

first = ListNode.new(1)
second = ListNode.new(2)
third = ListNode.new(3)
four = ListNode.new(4)

four.next = first
first.next = third
third.next = second

p insertion_list_sort(four)
