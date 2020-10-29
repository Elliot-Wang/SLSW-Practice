#!/usr/bin/ruby -w

=begin
做
  * 打印字符串"Hello, world."。
  * 在字符串"Hello, Ruby."中，找出"Ruby."所在下标。
  * 打印你的名字十遍。
  * 打印字符串"This is sentence number 1."，其中的数字1会一直变化到10。
  * 从文件运行Ruby程序。
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