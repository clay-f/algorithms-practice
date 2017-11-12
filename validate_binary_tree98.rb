# Given a binary tree, determine if it is a valid binary search tree

class TreeNode
  attr_accessor :val, :left, :right, :root
  @root

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end
end

def is_valid_bst?(root)
  return true if root.nil?
  return compare?(root, root.val)
end

def compare?(node, val)
  tmp_flag = []
  unless node.left.nil?
    tmp_flag.push(true) if node.left.val < val
    tmp_flag.push(false)
  end

  unless node.right.nil?
    tmp_flag.push(true) if node.right.val > val
    tmp_flag.push(false)
  end

  return tmp_flag.all?
end

root = TreeNode.new(0)
one = TreeNode.new(1)
two = TreeNode.new(2)
three = TreeNode.new(3)
root.root = one
root.root.left = two
root.root.right = three

p is_valid_bst?(root.root)
