=begin
    类也是模块
    当include ActAsCsv时，会自动调用self.included方法。
    传入参数base正是类RubyCsv。
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

        attr_reader :headers, :result

        def initialize
            read
        end
    end
end

class RubyCsv 
    include ActAsCsv
    acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.result.inspect