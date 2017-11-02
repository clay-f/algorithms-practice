# Given two binary trees, write a function to check if they are equal or not.
#   Two binary trees are considered equal if they are structurally identical and the nodes have the same value.
class TreeNode
  attr_accessor :key, :val, :left, :right, :n, :root
  @root

  def initialize(key, val, n=1)
    @key = key
    @val = val
    @left = nil
    @right = nil
    @n = n
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

  def size
    get_size(@root)
  end

  def get_size(node)
    return 0 if node.nil?
    node.n
  end

  def put(key, val)
    @root =  put_val(@root, key, val)
  end

  def put_val(node, key, val)
    return TreeNode.new(key, val, 1) if node.nil?
    if compare(key, node.key) < 0
      node.left = put_val(node.left, key, val)
    elsif compare(key, node.key) > 0
      node.right = put_val(node.right, key, val)
    else
      node.val = val
    end
    node.n = get_size(node.left) + get_size(node.right) + 1
    return node
  end
end

def same_tree?(p, q)
  get_tree_arr(p.root).flatten == get_tree_arr(q.root).flatten
end

def get_tree_arr(node, arr=[])
  arr.push(node.val)
  arr.push(get_tree_arr(node.left)) unless node.left.nil?
  arr.push(get_tree_arr(node.right)) unless node.right.nil?
  return arr
end

tree = TreeNode.new(0, 0)
tree2 = TreeNode.new(0, 0)
tmp1_arr = [["t", "t"], ["b", "b"], ["c", "c"], ["a", "a"], ["z", "z"], ["u", "u"], ["e", "e"], ["d", "d"]]
tmp2_arr =[["s", "s"], ["e", "e"], ["a", "a"], ["c", "c"], ["r", "r"], ["h", "h"], ["m", "m"], ["x", "x"]]
tmp1_arr.map { |i| tree.put(i.first, i.last) }
tmp2_arr.map { |i| tree2.put(i.first, i.last) }
p same_tree?(tree, tree2)