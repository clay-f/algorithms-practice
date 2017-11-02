# Given a binary tree, flatten it to a linked list in-place.

class TreeNode
  attr_accessor :root, :val, :left, :right
  @root

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end

  def compare(origin, target)
    if origin < target
      -1
    elsif origin > target
      1
    else
      0
    end
  end

  def put(val)
    @root = put_val(@root, val)
  end

  def put_val(node, val)
    return TreeNode.new(val) if node.nil?
    if compare(val, node.val) < 0
      node.left = put_val(node.left, val)
    elsif compare(val, node.val) > 0
      node.right = put_val(node.right, val)
    else
      node.val = val
    end
    return node
  end

  def get_all_node_val
    help_get_node_val(@root).flatten
  end

  private

  def help_get_node_val(node, arr=[])
    arr.push(node.val)
    arr.push(help_get_node_val(node.left)) unless node.left.nil?
    arr.push(help_get_node_val(node.right)) unless node.right.nil?
    return arr
  end
end


class Node
  attr_accessor :node, :next

  def initialize(node)
    @node = node
    @next = nil
  end
end

tree = TreeNode.new(0)
(1..6).to_a.map { |i| tree.put(i) }

def flatten(root)
  first = Node.new(root.delete_at(0))
  while root.size > 0
    first = add_node(first, root.delete_at(0))
  end
  return first
end

def add_node(node, val)
  unless node.next.nil?
    node.next = add_node(node.next, val)
  else
    node.next = Node.new(val)
  end
  return node
end

p flatten(tree.get_all_node_val)