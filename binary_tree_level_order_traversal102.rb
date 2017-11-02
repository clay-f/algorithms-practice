class TreeNode
  attr_accessor :val, :left, :right, :root
  @root = nil

  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end

  def put(val)
    @root = put_node(@root, val)
  end

  def put_node(x, val)
    return TreeNode.new(val) if x.nil?
    cmp = compare(val, x)
    if cmp < 0
      x.left = put_node(x.left, val)
    elsif cmp > 0
      x.right = put_node(x.right, val)
    else
      x.val = val
    end
    x
  end

  def compare(origin, target)
    if origin > target.val
      1
    elsif origin < target.val
      -1
    else
      0
    end
  end
end

def get_node_val(node, arr = [])
  arr.push(node.left.val) unless node.left.nil?
  arr.push(node.right.val) unless node.right.nil?
  arr
end

def level_order_t(node, arr = [])
  return arr if node.nil?
  if !node.left.nil? && (!node.left.left.nil? || !node.left.right.nil?)
    level_order_t(node.left, arr.push(get_node_val(node.left)))
  elsif !node.right.nil? && (!node.right.left.nil? || !node.right.right.nil?)
    level_order_t(node.right, arr.push(get_node_val(node.right)))
  else
    return arr
  end
end

def level_order(root)
  level_order_t(root, [get_node_val(root)]).insert(0, [root.val])
end

tree = TreeNode.new(0)
arr = [3, 9, 20, 15, 7, 21, 25, 17, 14, 2]
arr.each { |i| tree.put(i) }
p level_order(tree.root)