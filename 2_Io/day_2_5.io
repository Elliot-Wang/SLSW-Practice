/*
 *做
 *  斐波那契数列以两个1开始，每一个数都是之前两个数之和：1，1，2，3，5，8，13，21，以此类推。写一个计算第n个斐波那契数的程序。这里fib(1)会得到1，fib(4)会得到3。如果你能用递归和循环两种方法写出来，我将给你额外加分。
 *  在分母为0的情况下，如何让运算符/返回0？
 *  写一个程序，把二维数组中的所有数相加。
 *  对列表增加一个名为myAverage的槽，以计算列表中所有数字的平均值。如果列表中没有数字会发生什么？（加分题：如果列表中有任何一项不是数字，则产生一个Io异常。）
 @  对二维列表写一个原型。
    该原型的dim(x, y)方法可为一个包含y个列表的列表分配内存，
    其中每个列表都有x个元素，set(x, y)方法可设置列表中的值，
    get(x, y)方法可返回列表中的值。
 *  加分题：写一个转置方法，使得原列表上的matrix get(x, y)与转置后列表的(new_matrix get(y, x))相等。
 *  把矩阵写入文件，并从文件中读取矩阵。
 *  写一个程序，提供10次尝试机会，猜一个1～100之间的随机数。如果你愿意的话，可以在第一次猜测之后，提示猜大了还是猜小了。
 */

List2d := List clone
List2d dim := method(x, y,
   l2d := List2d clone
   for(i, 1, y,
      l2d append(List setSize(x))
   )
   return l2d
)

List2d set := method(x, y, var,
   self at(y-1) atPut(x-1, var)
)
List2d get := method(x, y,
   return self at(y-1) at(x-1)
)

l2 := List2d dim(3, 4)

l2 get(1, 1) println
l2 set(1, 1, 34) 
l2 println