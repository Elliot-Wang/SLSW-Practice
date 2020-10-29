 
=begin
做
    有一个数组，包含16个数字。仅用each方法打印数组中的内容，一次打印4个数字。然后，用可枚举模块的each_slice方法重做一遍。
    我们前面实现了一个有趣的树类Tree，但它不具有简洁的用户接口，来设置一棵新树，为它写一个初始化方法，接受散列表和数组嵌套的结构。写好之后，你可以这样设置新树：{'grandpa' => { 'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} } } }。
  * 写一个简单的grep程序，把文件中出现某词组的行全都打印出来。这需要使用简单的正则表达式匹配，并从文件中读取各行。（这在Ruby中超乎想象地简单。）如果你愿意的话，还可以加上行号。
=end

num = 0
File.foreach("1_Ruby/test.txt") do |line| 
  if line.match(/Ruby/) 
    num = num + 1
    puts "#{num} #{line}"
  end
end