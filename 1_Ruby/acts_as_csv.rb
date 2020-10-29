=begin
   利用所谓宏，即类的静态方法，为子类定义方法。
=end
    
class ActAsCsv

    def self.acts_as_csv
        define_method "read" do
            Dir.chdir("1_Ruby")
            file = File.new(self.class.to_s.downcase + ".csv")
            @headers = file.gets.chomp.split(", ")

            file.each do |row|
                @result << row.chomp.split(", ")
            end
        end

        define_method "result" do
            @result
        end

        define_method "headers" do
            @headers
        end

        define_method "initialize" do
            @result = []
            read
        end
    end
end

class RubyCsv < ActAsCsv
    acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.result.inspect