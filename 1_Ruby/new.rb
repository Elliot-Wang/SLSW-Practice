def call_block(&block)
    puts "block.call"
    block.call
    puts "yield"
    yield
end

def pass_block(&block)
    puts "block pass"
end

class Foo
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def print
        puts @name
    end
end

f = Foo.new("Suzuki")
f.name = "Pikacyu"
f.print