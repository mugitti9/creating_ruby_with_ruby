def preorder(tree)
  p tree[0]
  if tree[0].start_with?("節")
    preorder(tree[1])
    preorder(tree[2])
  end
end

def postorder(tree)
  if tree[0].start_with?("節")
    postorder(tree[1])
    postorder(tree[2])
  end
  p tree[0]
end

node_2 = ["節2", ["葉A"], ["葉B"]]
node_3 = ["節3", ["葉C"], ["葉D"]]
node_1 = ["節1", node_2, node_3]

postorder(node_1)
