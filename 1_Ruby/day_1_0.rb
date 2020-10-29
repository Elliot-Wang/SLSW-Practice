=begin
找
    Ruby API文档。
        https://guides.rubyonrails.org/i18n.html
    Programming Ruby ：The Pragmatic Programmer’s Guide [TFH08]的免费在线版本。
        https://ruby-doc.com/docs/ProgrammingRuby/
    替换字符串某一部分的方法。
        sub!(patter, replacement)       只替换一次
        gsub!(partter, replacement)     替换所有
    有关Ruby正则表达式的资料。
        regex 对象，例如 b = /\w+/
        字符串匹配 "What, you?".match(b) => #<MatchData "What">
        字符串替换 "Thank you".sub(b, "For") => "For you"
        检查是否匹配 !!(str =~ b)
            !!把结果转换为Boolean
    有关Ruby区间（range）的资料。
        整数区间 1..100         1至100
                1...100        1至99
        字符区间 'A'..'Z'
=end