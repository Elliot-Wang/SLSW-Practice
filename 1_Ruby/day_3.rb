=begin
做
    修改前面的CSV应用程序，使它可以用each方法返回CsvRow对象。
    然后，在CsvRow对象上，对某个给定标题，用method_missing方法返回标题所在列的值。
    比如，对于包含以下内容的文件：
    one, two
    lions, tigers

    API可以像下面这样操作：
    csv = RubyCsv.new
    csv.each {|row| puts row.one}
    这会打印出"lions"。
=end

module ActAsCsv
    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        attr_reader :headers, :result

        def read
            @result = []
            file_name = self.class.to_s.downcase + ".csv"
            Dir.chdir("1_Ruby")
            file = File.new(file_name)
            @headers = file.gets.chomp.split(", ")

            file.each do |row|
                @result << row.chomp.split(", ")
            end
        end

        def each(&block)
            @result.each do |row|
                block.call CsvRow.new(@headers, row)
            end
        end

        def initialize
            read
        end

        class CsvRow
            attr_reader :row, :headers
            def initialize(headers, row)
                @headers = headers
                @row = row
            end

            def method_missing(name, *args, &block)
                index = @headers.index(name.to_s)
                return @row[index] 
            end
        end
    end
end

class RubyCsv 
    include ActAsCsv
    acts_as_csv
end

csv = RubyCsv.new
csv.each {|row| puts row.name}
