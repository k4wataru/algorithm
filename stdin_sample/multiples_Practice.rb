# 3と5の最小公倍数
lcm_3_and_5 = 3.lcm(5)
# 7から7777777までの3と5の両方の倍数を全て列挙する
multiples_of_7 = 7.step(7777777, lcm_3_and_5)
# 3の出現回数をカウントするための変数
count_of_3 = 0

multiples_of_7.each do |num|
  count_of_3 = count_of_3 + num.to_i.count(3)
end

puts count_of_3