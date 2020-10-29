
=begin
做
    有一个数组，包含16个数字。仅用each方法打印数组中的内容，一次打印4个数字。然后，用可枚举模块的each_slice方法重做一遍。
  * 我们前面实现了一个有趣的树类Tree，但它不具有简洁的用户接口，来设置一棵新树，为它写一个初始化方法，接受散列表和数组嵌套的结构。写好之后，你可以这样设置新树：{'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }。
    写一个简单的grep程序，把文件中出现某词组的行全都打印出来。这需要使用简单的正则表达式匹配，并从文件中读取各行。（这在Ruby中超乎想象地简单。）如果你愿意的话，还可以加上行号。
=end

class Tree
    attr_accessor :root

    def initialize(children={})
        @root = Node.new("root", children)
    end

    class Node
        attr_accessor :node_name, :children
        def initialize(name, children={})
            @node_name = name
            nodes = []
            children.each do |k, v|
                nodes.push(Node.new(k, v))
            end
            @children = nodes
        end

        def visit(&block)
            block.call self
        end

        def visit_all(&block)
            block.call self
            children.each {|c| c.visit_all &block}
        end
    end

    def visit_all(&block)
        root.visit_all &block
    end
end


ruby_tree = Tree.new(
    {'grandpa' => 
        { 'dad' => 
            {
                'child 1' => {}, 
                'child 2' => {} 
            }, 
        'uncle' => 
            {
            'child 3' => {}, 
            'child 4' => {} 
            } 
        } 
    }
)
r = ruby_tree.root
ruby_tree.visit_all {|node| puts node.node_name}
=begin
puts "Visiting a node"
ruby_tree.root.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
ruby_tree.root.visit_all {|node| puts node.node_name}
=end