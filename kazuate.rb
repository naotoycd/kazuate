#!/usr/bin/env ruby
# coding: utf-8

def genprob
  a = ""
  b = "123456789"
  4.times do
    i = rand(b.length)
    a += b[i..i]
    b[i..i] = ""
  end
  return a
end

def judge(ans, str)
  hit = blow = 0
  4.times do |i|
    4.times do |j|
      if ans[i] == str[j] then
        if i == j then
          hit += 1
        else
          blow += 1
        end
      end
    end
  end
  return hit, blow
end

ans = genprob
puts "answer = #{ans}."
10.times do
  print "your guess? "
  str = gets
  hit, blow = judge(ans, str)
  puts "hit = #{hit}, blow = #{blow}."
  if hit == 4 then
    puts "you win!"
    break
  end
end
puts "answer = #{ans}."
