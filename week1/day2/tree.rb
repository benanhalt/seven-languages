# Change the Tree class implementation so that the initializer accepts
# a nested structure of hashes.

class Tree
  attr_accessor :children, :node_name

  def initialize(name, structure={})
    @node_name = name
    @children = structure.map { |k,v| Tree.new(k, v) }
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new(
  "Root",
  {'grandpa' => {'dad' => {'child1' => {}, 'child2' => {}}, 'uncle' => {'child3' => {}, 'child4' => {}}}}
)

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
