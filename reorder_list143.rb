class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end

  def delete_last_node(node = self)
    unless node.next.next.nil?
      delete_last_node(node.next)
    else
      tmp_node = node.next
      node.next = nil
      return tmp_node
    end
  end
end

def record_list(head)
  head_last = head.delete_last_node
  head_tmp_list = head.next
  head.next = head_last
  head.next.next = head_tmp_list
  return head
end

first = ListNode.new("first")
second = ListNode.new("second")
third = ListNode.new("third")
four = ListNode.new("four")

first.next = second
second.next = third
third.next = four

p record_list(first)
