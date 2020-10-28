#!/usr/bin/ruby -w

=begin
找
    Ruby API文档。
    Programming Ruby ：The Pragmatic Programmer’s Guide [TFH08]的免费在线版本。
    替换字符串某一部分的方法。
    有关Ruby正则表达式的资料。
    有关Ruby区间（range）的资料。
做
    打印字符串"Hello, world."。
    在字符串"Hello, Ruby."中，找出"Ruby."所在下标。
    打印你的名字十遍。
    打印字符串"This is sentence number 1."，其中的数字1会一直变化到10。
    从文件运行Ruby程序。
    加分题：如果你感觉意犹未尽，还可以写一个选随机数的程序。该程序让玩家猜随机数是多少，并告诉玩家是猜大了还是猜小了。
=end

# 打印字符
puts "Hello, world.";
# 寻找子串位置
s = "Hello, Ruby.";
puts s.index("Ruby.");
# 循环10次
10.times {puts "Elliot"}
# for 循环
for i in 1..10
    puts "This is sentence number #{ i }."
end
# 加分题在day_1_ex.rb