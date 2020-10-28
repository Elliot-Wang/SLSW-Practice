#!/usr/bin/ruby -w
min = 1;
max = 100;
puts "Let's play a game."
puts "I have a number between #{ min } and #{ max },"
puts "and you have 10 times to guess, I will only anwser"
puts "bigger or more small. Let's start!"
ans = rand min..max
vic = false
for i in 1..10
    puts "\n#{ i } Give me a number:"
    guess = gets
    guess = guess.to_i
    if guess > ans
        puts "emmm...more small"
    elsif guess < ans
        puts "yeah, but bigger"
    else
       puts "You got it!" 
       vic = true
       break
    end
end
if not vic
    puts "anwser is #{ ans }"
    puts "What a pity, game over."
end