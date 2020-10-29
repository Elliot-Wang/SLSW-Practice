class ActAsCsv
    attr_reader :headers, :result

    def read
        Dir.chdir("1_Ruby")
        file = File.new(self.class.to_s.downcase + '.csv')
        @headers = file.gets.chomp.split(', ')

        file.each do |row|
            @result << row.chomp.split(', ')
        end
    end
    
    def initialize
        @result = []
        read
    end
end

class RubyCsv < ActAsCsv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.result.inspect