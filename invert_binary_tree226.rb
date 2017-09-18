# invert binary tree
# 
# class BinarySearchTree
#   class Node
#     attr_reader :key, :left, :right

#     def initialize(key)
#       @key = key
#       @left = nil
#       @right = nil
#     end
#   end
# end


def invert_binary_tree(tree)
  return nil if tree.nil?

  tmp = tree.left
  tree.left = tree.right
  tree.right = tmp

  tree.left = invert_binary_tree(tree.left)
  tree.right = invert_binary_tree(tree.right)
end