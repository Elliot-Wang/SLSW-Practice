=begin
    做
        修改前面的CSV应用程序，使它可以用each方法返回CsvRow对象。然后，在CsvRow对象上，对某个给定标题，用method_missing方法返回标题所在列的值。
        比如，对于包含以下内容的文件：
        one, two
        lions, tigers
        API可以像下面这样操作：

        csv = RubyCsv.new
        csv.each {|row| puts row.one}
        这会打印出"lions"。
=end

# TODO Ruby Day 3