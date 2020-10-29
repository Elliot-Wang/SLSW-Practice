=begin
找
    分别找到用代码块和不用代码块读取文件的方法，用代码块有什么好处？
        使用代码块读取文件 File.foreach(f_name) &block
            可以针对每一行做特定操作
        不用代码块读取文件 File.read(f_name)
            直接返回全文文本
    如何把散列表转换成数组？数组能转换成散列表吗？
        使用递归。或者用to_s方法。
        数组可以使用to_h方法
    你能循环遍历散列表吗？
        可以，用each方法
    Ruby的数组能当作栈来用，它还能用作哪些常用的数据结构？
        数组的方法有：
        delete, each, insert, last, length
        pop, push, shift
        因此，
        pop+push等于stack
        pop+shift等于queue
=end
