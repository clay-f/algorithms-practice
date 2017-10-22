# tree structure didn't define

def reverse_tree(tree)
  return if(tree.nil?)

  temp = tree.left
  tree.left = tree.right
  tree.right = temp

  reverse_tree(tree.left)
  reverse_tree(tree.right)
end
