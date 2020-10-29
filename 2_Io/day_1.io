/*
 * 找
 *     一些Io的示例问题。
 *          没找到。
 *     一个可解答问题的Io社区。
 *          过气了，找不到。
 *     带有Io惯用法的风格指南。
 *          找不到。
 * 答
 *     对1+1求值，然后对1 + "one"求值。Io是强类型还是弱类型？用代码证实你的答案。
 *          弱类型
 *     0是true还是false？空字符串是true还是false？nil是true还是false？用代码证实你的答案。
 *          nil是false, 0、“”都是true
 *     如何知道某个原型都支持哪些槽？
 *          用slotNames
 *     =（等号）、:=（冒号等号）、::=（冒号冒号等号）之间有何区别？你会在什么情况下使用它们？
 *          = 只为已存在的槽更新值
 *          := 创建新槽，并赋值
 *          ::= 创建新槽，创建setter，并赋值
 *          目前不知道，访问控制如何。不过有了setter，总感觉比较aesthetic
 * 做
 *     从文件中运行Io程序。
 *     给定槽的名称，执行该槽中的代码。
 * 
 */

 // 强类型？弱类型？
 e := try(1+"1")
 e catch(Exception, writeln("Io is weak type"))

// 谁是false ？
if(0, nil,"0 is false" println)
if("", nil,"empty string is false" println)
if(nil, nil,"nil is false" println)
if(false, false,"false is false" println)

// 查看原型的槽
slotList := Object slotNames
slotList println

// 赋值符号的区别
Animal := Object clone do(
    legs ::= nil
    tail ::= nil
)
Cat := Animal clone setLegs(4) setTail(1)
Dog := Animal clone do (legs = 4; tail = 1)

// 使用槽里面的方法
myDog := Object clone
myDog sit := method("I'm sitting\n" print)
myDog sit