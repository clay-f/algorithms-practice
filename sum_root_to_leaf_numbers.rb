require 'pry'

class Tree
  attr_accessor :root, :right, :left, :val, :n

  @root

  def initialize(val, n=1)
    @val = val
    @left = nil
    @right = nil
    @n = n
  end

  def put(val)
    @root = put_node(@root, val)
  end

  def size
    get_size(@root)
  end

  def get(key)
    tmp_val = get_node_key(@root, key)
    return nil if tmp_val.nil?
    tmp_val.val
  end

  def delete_min
    @root = delete_min_node(@root)
  end

  def delete(key)
    @root = delete_node(@root, key)
  end

  private

  def put_node(node, val)
    return Tree.new(val, 1) if node.nil?
    if (val <=> node.val ) < 0
      node.left = put_node(node.left, val)
    elsif (val <=> node.val) > 0
      node.right = put_node(node.right, val)
    else
      node.val = val
    end
    node.n = get_size(node.left) + get_size(node.right) + 1
    return node
  end

  def get_size(node)
    return 0 if node.nil?
    node.n
  end

  def get_node_key(node, val)
    return nil if node.nil?
    if (val <=> node.val) < 0
      get_node_key(node.left, val)
    elsif (val <=> node.val) > 0
      get_node_key(node.right, val)
    else
      return nil if node.nil?
      node
    end
  end

  def delete_min_node(x)
    return x.right if x.left.nil?
    x.left = delete_min_node(x.left)
    x.n = get_size(x.left) + get_size(x.right) + 1
    return x
  end

  def delete_node(x, key)
    return nil if x.nil?
    if (key <=> x.val) < 0
      x.left = delete_node(x.left, key)
    elsif (key <=> x.val) > 0
      x.right = delete_node(x.right, key)
    else
      return x.left if x.right.nil?
      return x.right if x.left.nil?
      t = x
      x.left = t.left
      x.right = delete_min(t.right)
    end
    x.n = get_size(x.left) + get_size(x.right) + 1
    return x
  end
end

tree = Tree.new(0)
tree.put(2)
tree.put(1)
tree.put(3)

def sum_numbers(root)
  ([get_leaf_arr(root.left)].insert(0, root.val).flatten.join.to_i) + ([get_leaf_arr(root.right)].insert(0, root.val).flatten).join.to_i
end

def get_leaf_arr(node, arr=[])
  arr.push(node.val)
  arr.push(get_leaf_arr(node.left, arr)) unless node.left.nil?
  arr.push(get_leaf_arr(node.right, arr)) unless node.right.nil?
  return arr
end

p sum_numbers(tree.root)