require "minruby"

def evaluate(tree)
  case tree[0]
  when "lit"
    tree[1]
  when "+"
    evaluate(tree[1]) + evaluate(tree[2])
  when "-"
    evaluate(tree[1]) - evaluate(tree[2])
  when "*"
    evaluate(tree[1]) * evaluate(tree[2])
  when "/"
    evaluate(tree[1]) / evaluate(tree[2])
  when "**"
    evaluate(tree[1]) ** evaluate(tree[2])
  when "%"
    evaluate(tree[1]) % evaluate(tree[2])
  when "=="
    evaluate(tree[1]) == evaluate(tree[2])
  when "<"
    evaluate(tree[1]) < evaluate(tree[2])
  when ">"
    evaluate(tree[1]) > evaluate(tree[2])
  end
end

def max(tree)
  if tree[0] == "lit"
    tree[1]
  else
    evaluate_1 = max(tree[1])
    evaluate_2 = max(tree[2])

    if evaluate_1 > evaluate_2
      evaluate_1
    else
      evaluate_2
    end
  end
end

str = gets

tree = minruby_parse(str)


answer = evaluate(tree)

p(answer)
p(max(tree))
