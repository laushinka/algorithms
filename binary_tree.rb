class Node
  attr_accessor :left, :right
  def initialize(value)
    @value = value
  end

end

def find_or_add(root_node, value)
  if value < root_node
    if root_node.left
      find_or_add(root_node.left, value)
    else
      node.left = value
    end
  else
    if root_node.right
      find_or_add(root_node.right, value)
    else
      node.right = value
    end
  end
end

def in_order(root_node)
  if root_node.left
    puts root_node.left
    in_order(root_node.left)
  end
  root_node
  if root_node.right
    puts root_node.right
    in_order(root_node.right)
  end
end

root_node = Node.new(4)
node.left = Node.new(1)
node.right = Node.new(5)
