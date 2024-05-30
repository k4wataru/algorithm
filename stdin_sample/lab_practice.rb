# multi問題→7以上7777777以下の7の倍数を全て書き出したとき、数字「7」は何回現れるか。
# 正解→777784

multiples_of_7 = 7.step(7777777, 7)
# オブジェクト.step(limit, stepno)
count = 0
multiples_of_7.each do |num|
  count = count + num.to_s.count('7')
end

puts count

# 応用問題
# 「7以上7777777以下の範囲で、3の倍数かつ5の倍数でもある
# 数字に含まれるすべての『3』の出現回数を求めよ。」

lcm_3_and_5 = 3.lcm(5)
# lcmで最小公倍数を求める
multiples_of = 7.step(7777777, lcm_3_and_5)
count1 = 0
multiples_of.each do |num|
  count1 += num.to_s.count('3')
end

puts count1

def find_divisors(number)
  divisors = []
  (1..number).each do |i|
    if number % i == 0
      divisors << i
    end
  end
  divisors
end  
print "約数を求めたい数値を入力してください"
number = gets.to_i
divisors = find_divisors(number)
puts "数値 #{number} の約数: #{divisors.join(', ')}"