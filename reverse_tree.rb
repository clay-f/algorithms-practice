### reverse binary tree

class TreeNode
  attr_accessor :val, :left, :right, :root
  @root = nil

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

  def put(key)
    @root = put_val(@root, key)
  end

  private

  def put_val(node, key)
    return TreeNode.new(key) if node.nil?
    if compare(key, node.val) < 0
      node.left = put_val(node.left, key)
    elsif compare(key, node.val) > 0
      node.right = put_val(node.right, key)
    else
      node.val = key
    end
    return node
  end
end

def reverse_tree(node)
  return nil if node.nil?
  tmp_node = node.left
  node.left = node.right
  node.right = tmp_node
  unless node.left.nil?
    node.left = reverse_tree(node.left)
  end

  unless node.right.nil?
    node.right= reverse_tree(node.right)
  end
  return node
end


tree = TreeNode.new(0)
tree.put(10)
tree.put(8)
tree.put(15)
tree.put(7)
tree.put(9)
tree.put(15)
tree.put(13)
tree.put(20)

p reverse_tree(tree.root)
